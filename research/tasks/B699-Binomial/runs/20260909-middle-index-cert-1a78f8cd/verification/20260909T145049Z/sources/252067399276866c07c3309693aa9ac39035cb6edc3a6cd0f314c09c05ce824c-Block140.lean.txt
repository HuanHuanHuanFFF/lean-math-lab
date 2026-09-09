import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block140

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [12320023, 12320207, 12320369, 12320549, 12320731, 12320897, 12321061, 12321241, 12321409, 12321593, 12321763, 12321929, 12322109, 12322243, 12322423, 12322579]
theorem check0 : primorialChainCheck 4473 primorial4473 184 12319843 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 12319843 12322579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12319843) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [12322711, 12322889, 12323063, 12323237, 12323387, 12323569, 12323737, 12323911, 12324077, 12324253, 12324437, 12324607, 12324769, 12324953, 12325127, 12325301]
theorem check1 : primorialChainCheck 4473 primorial4473 184 12322579 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 12322579 12325301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12322579) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [12325457, 12325619, 12325777, 12325961, 12326063, 12326219, 12326393, 12326569, 12326753, 12326927, 12327109, 12327281, 12327457, 12327631, 12327811, 12327949]
theorem check2 : primorialChainCheck 4473 primorial4473 184 12325301 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 12325301 12327949 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12325301) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [12328133, 12328307, 12328427, 12328609, 12328781, 12328951, 12329129, 12329297, 12329477, 12329657, 12329831, 12330011, 12330179, 12330347, 12330523, 12330701]
theorem check3 : primorialChainCheck 4473 primorial4473 184 12327949 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 12327949 12330701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12327949) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [12330883, 12331063, 12331237, 12331391, 12331541, 12331723, 12331903, 12332059, 12332237, 12332413, 12332597, 12332779, 12332963, 12333127, 12333289, 12333473]
theorem check4 : primorialChainCheck 4473 primorial4473 184 12330701 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 12330701 12333473 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12330701) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [12333649, 12333833, 12334013, 12334183, 12334337, 12334519, 12334703, 12334873, 12335051, 12335227, 12335381, 12335563, 12335723, 12335903, 12336083, 12336239]
theorem check5 : primorialChainCheck 4473 primorial4473 184 12333473 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 12333473 12336239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12333473) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [12336421, 12336593, 12336767, 12336949, 12337133, 12337301, 12337483, 12337621, 12337777, 12337939, 12338101, 12338273, 12338449, 12338621, 12338789, 12338947]
theorem check6 : primorialChainCheck 4473 primorial4473 184 12336239 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 12336239 12338947 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12336239) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [12339097, 12339277, 12339451, 12339631, 12339793, 12339967, 12340103, 12340271, 12340429, 12340607, 12340789, 12340969, 12341141, 12341297, 12341477, 12341653]
theorem check7 : primorialChainCheck 4473 primorial4473 184 12338947 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 12338947 12341653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12338947) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [12341837, 12342013, 12342167, 12342331, 12342511, 12342683, 12342857, 12343033, 12343189, 12343349, 12343523, 12343703, 12343883, 12344063, 12344237, 12344419]
theorem check8 : primorialChainCheck 4473 primorial4473 184 12341653 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 12341653 12344419 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12341653) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [12344587, 12344723, 12344897, 12345071, 12345253, 12345433, 12345581, 12345743, 12345923, 12346099, 12346273, 12346429, 12346613, 12346793, 12346973, 12347123]
theorem check9 : primorialChainCheck 4473 primorial4473 184 12344419 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 12344419 12347123 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12344419) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [12347281, 12347459, 12347617, 12347801, 12347977, 12348151, 12348319, 12348487, 12348671, 12348829, 12349003, 12349171, 12349333, 12349489, 12349663, 12349801]
theorem check10 : primorialChainCheck 4473 primorial4473 184 12347123 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 12347123 12349801 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12347123) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [12349933, 12350099, 12350281, 12350453, 12350581, 12350699, 12350879, 12351049, 12351233, 12351407, 12351587, 12351769, 12351949, 12352103, 12352283, 12352453]
theorem check11 : primorialChainCheck 4473 primorial4473 184 12349801 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 12349801 12352453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12349801) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [12352631, 12352789, 12352943, 12353119, 12353291, 12353459, 12353633, 12353813, 12353989, 12354163, 12354347, 12354527, 12354691, 12354871, 12355051, 12355223]
theorem check12 : primorialChainCheck 4473 primorial4473 184 12352453 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 12352453 12355223 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12352453) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [12355381, 12355559, 12355741, 12355919, 12356101, 12356273, 12356447, 12356551, 12356731, 12356893, 12357077, 12357253, 12357431, 12357607, 12357791, 12357971]
theorem check13 : primorialChainCheck 4473 primorial4473 184 12355223 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 12355223 12357971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12355223) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [12358123, 12358279, 12358459, 12358637, 12358817, 12358993, 12359161, 12359339, 12359521, 12359701, 12359873, 12360043, 12360217, 12360401, 12360563, 12360727]
theorem check14 : primorialChainCheck 4473 primorial4473 184 12357971 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 12357971 12360727 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12357971) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [12360911, 12361093, 12361277, 12361451, 12361619, 12361793, 12361961, 12362143, 12362327, 12362489, 12362659, 12362839, 12363011, 12363179, 12363361, 12363521]
theorem check15 : primorialChainCheck 4473 primorial4473 184 12360727 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 12360727 12363521 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12360727) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [12363691, 12363859, 12364021, 12364199, 12364379, 12364543, 12364727, 12364909, 12365083, 12365261, 12365429, 12365611, 12365779, 12365959, 12366139, 12366301]
theorem check16 : primorialChainCheck 4473 primorial4473 184 12363521 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 12363521 12366301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12363521) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [12366467, 12366643, 12366811, 12366989, 12367163, 12367339, 12367507, 12367681, 12367847, 12368029, 12368207, 12368387, 12368539, 12368717, 12368899, 12369083]
theorem check17 : primorialChainCheck 4473 primorial4473 184 12366301 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 12366301 12369083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12366301) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [12369263, 12369443, 12369613, 12369787, 12369967, 12370109, 12370249, 12370433, 12370607, 12370789, 12370961, 12371137, 12371311, 12371473, 12371657, 12371819]
theorem check18 : primorialChainCheck 4473 primorial4473 184 12369083 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 12369083 12371819 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12369083) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [12372001, 12372169, 12372341, 12372523, 12372707, 12372887, 12373069, 12373253, 12373397, 12373567, 12373729, 12373913, 12374081, 12374237, 12374407, 12374587]
theorem check19 : primorialChainCheck 4473 primorial4473 184 12371819 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 12371819 12374587 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12371819) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [12374749, 12374899, 12375067, 12375221, 12375401, 12375581, 12375743, 12375919, 12376103, 12376279, 12376447, 12376603, 12376787, 12376951, 12377119, 12377291]
theorem check20 : primorialChainCheck 4473 primorial4473 184 12374587 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 12374587 12377291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12374587) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [12377459, 12377639, 12377791, 12377971, 12378151, 12378319, 12378503, 12378673, 12378851, 12379033, 12379207, 12379387, 12379561, 12379739, 12379901, 12380051]
theorem check21 : primorialChainCheck 4473 primorial4473 184 12377291 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 12377291 12380051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12377291) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [12380231, 12380413, 12380597, 12380779, 12380957, 12381113, 12381227, 12381409, 12381587, 12381767, 12381949, 12382133, 12382313, 12382493, 12382673, 12382841]
theorem check22 : primorialChainCheck 4473 primorial4473 184 12380051 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 12380051 12382841 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12380051) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [12383023, 12383153, 12383317, 12383491, 12383669, 12383851, 12384023, 12384199, 12384353, 12384509, 12384683, 12384859, 12385033, 12385187, 12385361, 12385531]
theorem check23 : primorialChainCheck 4473 primorial4473 184 12382841 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 12382841 12385531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12382841) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [12385669, 12385847, 12385973, 12386147, 12386327, 12386497, 12386669, 12386851, 12387029, 12387149, 12387329, 12387481, 12387659, 12387841, 12387979, 12388157]
theorem check24 : primorialChainCheck 4473 primorial4473 184 12385531 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 12385531 12388157 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12385531) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [12388339, 12388511, 12388693, 12388877, 12389033, 12389213, 12389383, 12389567, 12389747, 12389917, 12390083, 12390253, 12390437, 12390619, 12390803, 12390971]
theorem check25 : primorialChainCheck 4473 primorial4473 184 12388157 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 12388157 12390971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12388157) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [12391111, 12391261, 12391429, 12391609, 12391789, 12391937, 12392113, 12392293, 12392459, 12392629, 12392803, 12392981, 12393163, 12393317, 12393499, 12393683]
theorem check26 : primorialChainCheck 4473 primorial4473 184 12390971 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 12390971 12393683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12390971) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [12393863, 12394043, 12394219, 12394391, 12394567, 12394747, 12394909, 12395077, 12395237, 12395419, 12395599, 12395759, 12395927, 12396107, 12396289, 12396467]
theorem check27 : primorialChainCheck 4473 primorial4473 184 12393683 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 12393683 12396467 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12393683) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [12396623, 12396781, 12396959, 12397111, 12397289, 12397453, 12397597, 12397771, 12397939, 12398119, 12398303, 12398483, 12398651, 12398833, 12399011, 12399193]
theorem check28 : primorialChainCheck 4473 primorial4473 184 12396467 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 12396467 12399193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12396467) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [12399371, 12399547, 12399727, 12399901, 12400049, 12400231, 12400397, 12400571, 12400753, 12400909, 12401093, 12401267, 12401447, 12401593, 12401743, 12401903]
theorem check29 : primorialChainCheck 4473 primorial4473 184 12399193 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 12399193 12401903 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12399193) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [12402073, 12402253, 12402431, 12402613, 12402781, 12402961, 12403123, 12403301, 12403481, 12403661, 12403837, 12404011, 12404191, 12404369, 12404537, 12404699]
theorem check30 : primorialChainCheck 4473 primorial4473 184 12401903 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 12401903 12404699 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12401903) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [12404863, 12405031, 12405209, 12405391, 12405571, 12405751, 12405919, 12406103, 12406267, 12406451, 12406633, 12406813, 12406997, 12407159, 12407333, 12407509]
theorem check31 : primorialChainCheck 4473 primorial4473 184 12404699 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 12404699 12407509 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12404699) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 12319843 12325301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12319843)
    (mid := 12322579) (hi := 12325301) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 12325301 12330701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12325301)
    (mid := 12327949) (hi := 12330701) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 12330701 12336239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12330701)
    (mid := 12333473) (hi := 12336239) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 12336239 12341653 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12336239)
    (mid := 12338947) (hi := 12341653) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 12341653 12347123 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12341653)
    (mid := 12344419) (hi := 12347123) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 12347123 12352453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12347123)
    (mid := 12349801) (hi := 12352453) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 12352453 12357971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12352453)
    (mid := 12355223) (hi := 12357971) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 12357971 12363521 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12357971)
    (mid := 12360727) (hi := 12363521) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 12363521 12369083 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12363521)
    (mid := 12366301) (hi := 12369083) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 12369083 12374587 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12369083)
    (mid := 12371819) (hi := 12374587) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 12374587 12380051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12374587)
    (mid := 12377291) (hi := 12380051) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 12380051 12385531 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12380051)
    (mid := 12382841) (hi := 12385531) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 12385531 12390971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12385531)
    (mid := 12388157) (hi := 12390971) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 12390971 12396467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12390971)
    (mid := 12393683) (hi := 12396467) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 12396467 12401903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12396467)
    (mid := 12399193) (hi := 12401903) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 12401903 12407509 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12401903)
    (mid := 12404699) (hi := 12407509) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 12319843 12330701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12319843)
    (mid := 12325301) (hi := 12330701) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 12330701 12341653 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12330701)
    (mid := 12336239) (hi := 12341653) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 12341653 12352453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12341653)
    (mid := 12347123) (hi := 12352453) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 12352453 12363521 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12352453)
    (mid := 12357971) (hi := 12363521) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 12363521 12374587 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12363521)
    (mid := 12369083) (hi := 12374587) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 12374587 12385531 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12374587)
    (mid := 12380051) (hi := 12385531) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 12385531 12396467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12385531)
    (mid := 12390971) (hi := 12396467) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 12396467 12407509 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12396467)
    (mid := 12401903) (hi := 12407509) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 12319843 12341653 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12319843)
    (mid := 12330701) (hi := 12341653) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 12341653 12363521 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12341653)
    (mid := 12352453) (hi := 12363521) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 12363521 12385531 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12363521)
    (mid := 12374587) (hi := 12385531) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 12385531 12407509 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12385531)
    (mid := 12396467) (hi := 12407509) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 12319843 12363521 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12319843)
    (mid := 12341653) (hi := 12363521) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 12363521 12407509 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12363521)
    (mid := 12385531) (hi := 12407509) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 12319843 12407509 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12319843)
    (mid := 12363521) (hi := 12407509) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 12319843 12407509 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block140

#print axioms B699MiddleExtension.PrimorialBlocks.Block140.joined
