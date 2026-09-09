import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block197

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [17303857, 17304031, 17304179, 17304347, 17304517, 17304701, 17304857, 17305033, 17305207, 17305391, 17305573, 17305747, 17305927, 17306111, 17306291, 17306453]
theorem check0 : primorialChainCheck 4473 primorial4473 184 17303677 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 17303677 17306453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17303677) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [17306617, 17306791, 17306953, 17307137, 17307313, 17307463, 17307637, 17307779, 17307959, 17308139, 17308307, 17308469, 17308651, 17308801, 17308939, 17309107]
theorem check1 : primorialChainCheck 4473 primorial4473 184 17306453 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 17306453 17309107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17306453) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [17309291, 17309471, 17309629, 17309801, 17309983, 17310157, 17310341, 17310511, 17310673, 17310851, 17311031, 17311213, 17311397, 17311561, 17311727, 17311901]
theorem check2 : primorialChainCheck 4473 primorial4473 184 17309107 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 17309107 17311901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17309107) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [17312083, 17312237, 17312419, 17312587, 17312759, 17312941, 17313113, 17313287, 17313467, 17313643, 17313827, 17313983, 17314159, 17314343, 17314519, 17314697]
theorem check3 : primorialChainCheck 4473 primorial4473 184 17311901 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 17311901 17314697 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17311901) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [17314873, 17315041, 17315219, 17315393, 17315569, 17315747, 17315927, 17316109, 17316289, 17316469, 17316653, 17316833, 17317007, 17317163, 17317343, 17317523]
theorem check4 : primorialChainCheck 4473 primorial4473 184 17314697 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 17314697 17317523 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17314697) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [17317693, 17317877, 17318023, 17318201, 17318383, 17318537, 17318711, 17318893, 17319053, 17319227, 17319389, 17319571, 17319749, 17319893, 17320067, 17320249]
theorem check5 : primorialChainCheck 4473 primorial4473 184 17317523 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 17317523 17320249 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17317523) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [17320421, 17320601, 17320777, 17320949, 17321123, 17321263, 17321441, 17321617, 17321771, 17321947, 17322127, 17322311, 17322491, 17322671, 17322829, 17322941]
theorem check6 : primorialChainCheck 4473 primorial4473 184 17320249 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 17320249 17322941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17320249) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [17323123, 17323297, 17323463, 17323619, 17323793, 17323963, 17324137, 17324303, 17324471, 17324641, 17324809, 17324987, 17325127, 17325299, 17325457, 17325619]
theorem check7 : primorialChainCheck 4473 primorial4473 184 17322941 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 17322941 17325619 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17322941) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [17325799, 17325961, 17326139, 17326301, 17326481, 17326649, 17326817, 17326987, 17327159, 17327327, 17327509, 17327693, 17327861, 17328043, 17328197, 17328379]
theorem check8 : primorialChainCheck 4473 primorial4473 184 17325619 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 17325619 17328379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17325619) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [17328557, 17328737, 17328919, 17329099, 17329271, 17329427, 17329591, 17329769, 17329943, 17330101, 17330267, 17330447, 17330627, 17330809, 17330993, 17331163]
theorem check9 : primorialChainCheck 4473 primorial4473 184 17328379 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 17328379 17331163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17328379) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [17331331, 17331497, 17331679, 17331859, 17332039, 17332223, 17332369, 17332529, 17332703, 17332871, 17333051, 17333233, 17333413, 17333593, 17333759, 17333941]
theorem check10 : primorialChainCheck 4473 primorial4473 184 17331163 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 17331163 17333941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17331163) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [17334089, 17334223, 17334391, 17334557, 17334739, 17334881, 17335061, 17335229, 17335411, 17335589, 17335757, 17335933, 17336101, 17336269, 17336453, 17336633]
theorem check11 : primorialChainCheck 4473 primorial4473 184 17333941 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 17333941 17336633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17333941) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [17336801, 17336981, 17337163, 17337347, 17337521, 17337673, 17337851, 17338031, 17338187, 17338333, 17338513, 17338693, 17338873, 17339057, 17339239, 17339423]
theorem check12 : primorialChainCheck 4473 primorial4473 184 17336633 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 17336633 17339423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17336633) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [17339599, 17339771, 17339929, 17340107, 17340269, 17340437, 17340607, 17340751, 17340929, 17341087, 17341267, 17341451, 17341633, 17341799, 17341979, 17342141]
theorem check13 : primorialChainCheck 4473 primorial4473 184 17339423 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 17339423 17342141 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17339423) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [17342309, 17342491, 17342653, 17342833, 17342987, 17343113, 17343283, 17343457, 17343629, 17343797, 17343967, 17344147, 17344319, 17344499, 17344669, 17344849]
theorem check14 : primorialChainCheck 4473 primorial4473 184 17342141 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 17342141 17344849 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17342141) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [17345023, 17345201, 17345333, 17345507, 17345633, 17345767, 17345947, 17346097, 17346281, 17346397, 17346569, 17346709, 17346871, 17347049, 17347207, 17347391]
theorem check15 : primorialChainCheck 4473 primorial4473 184 17344849 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 17344849 17347391 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17344849) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [17347537, 17347721, 17347901, 17348081, 17348213, 17348389, 17348567, 17348717, 17348899, 17349083, 17349259, 17349443, 17349611, 17349779, 17349961, 17350139]
theorem check16 : primorialChainCheck 4473 primorial4473 184 17347391 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 17347391 17350139 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17347391) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [17350321, 17350499, 17350679, 17350807, 17350969, 17351153, 17351311, 17351491, 17351641, 17351813, 17351987, 17352163, 17352323, 17352499, 17352683, 17352859]
theorem check17 : primorialChainCheck 4473 primorial4473 184 17350139 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 17350139 17352859 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17350139) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [17353043, 17353183, 17353363, 17353547, 17353727, 17353909, 17354089, 17354269, 17354431, 17354611, 17354759, 17354941, 17355103, 17355287, 17355469, 17355647]
theorem check18 : primorialChainCheck 4473 primorial4473 184 17352859 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 17352859 17355647 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17352859) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [17355817, 17355983, 17356151, 17356333, 17356487, 17356637, 17356793, 17356967, 17357149, 17357321, 17357503, 17357657, 17357839, 17358023, 17358203, 17358373]
theorem check19 : primorialChainCheck 4473 primorial4473 184 17355647 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 17355647 17358373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17355647) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [17358553, 17358707, 17358881, 17359063, 17359247, 17359427, 17359607, 17359789, 17359973, 17360153, 17360333, 17360501, 17360669, 17360843, 17361017, 17361191]
theorem check20 : primorialChainCheck 4473 primorial4473 184 17358373 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 17358373 17361191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17358373) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [17361373, 17361521, 17361697, 17361859, 17362027, 17362211, 17362379, 17362547, 17362717, 17362897, 17363081, 17363261, 17363419, 17363603, 17363771, 17363947]
theorem check21 : primorialChainCheck 4473 primorial4473 184 17361191 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 17361191 17363947 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17361191) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [17364107, 17364289, 17364469, 17364631, 17364811, 17364989, 17365141, 17365319, 17365499, 17365669, 17365847, 17366021, 17366191, 17366347, 17366483, 17366663]
theorem check22 : primorialChainCheck 4473 primorial4473 184 17363947 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 17363947 17366663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17363947) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [17366819, 17366983, 17367167, 17367331, 17367481, 17367619, 17367799, 17367983, 17368163, 17368321, 17368457, 17368633, 17368811, 17368987, 17369171, 17369351]
theorem check23 : primorialChainCheck 4473 primorial4473 184 17366663 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 17366663 17369351 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17366663) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [17369533, 17369713, 17369881, 17370049, 17370233, 17370407, 17370559, 17370737, 17370917, 17371099, 17371271, 17371447, 17371631, 17371799, 17371973, 17372119]
theorem check24 : primorialChainCheck 4473 primorial4473 184 17369351 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 17369351 17372119 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17369351) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [17372297, 17372477, 17372651, 17372819, 17372977, 17373143, 17373289, 17373469, 17373649, 17373833, 17374013, 17374171, 17374351, 17374519, 17374667, 17374817]
theorem check25 : primorialChainCheck 4473 primorial4473 184 17372119 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 17372119 17374817 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17372119) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [17374963, 17375123, 17375273, 17375453, 17375609, 17375783, 17375951, 17376119, 17376301, 17376467, 17376641, 17376817, 17376977, 17377159, 17377319, 17377501]
theorem check26 : primorialChainCheck 4473 primorial4473 184 17374817 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 17374817 17377501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17374817) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [17377667, 17377847, 17378017, 17378201, 17378377, 17378561, 17378729, 17378909, 17379079, 17379221, 17379379, 17379553, 17379727, 17379907, 17380091, 17380217]
theorem check27 : primorialChainCheck 4473 primorial4473 184 17377501 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 17377501 17380217 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17377501) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [17380399, 17380567, 17380747, 17380921, 17381099, 17381281, 17381461, 17381641, 17381821, 17381993, 17382161, 17382331, 17382509, 17382683, 17382851, 17383031]
theorem check28 : primorialChainCheck 4473 primorial4473 184 17380217 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 17380217 17383031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17380217) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [17383199, 17383381, 17383547, 17383721, 17383889, 17384071, 17384249, 17384429, 17384579, 17384749, 17384933, 17385073, 17385257, 17385421, 17385583, 17385757]
theorem check29 : primorialChainCheck 4473 primorial4473 184 17383031 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 17383031 17385757 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17383031) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [17385941, 17386123, 17386289, 17386471, 17386639, 17386819, 17386997, 17387171, 17387341, 17387507, 17387653, 17387827, 17388001, 17388169, 17388353, 17388521]
theorem check30 : primorialChainCheck 4473 primorial4473 184 17385757 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 17385757 17388521 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17385757) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [17388703, 17388869, 17389051, 17389193, 17389373, 17389553, 17389727, 17389907, 17390083, 17390267, 17390449, 17390627, 17390803, 17390977, 17391149, 17391331]
theorem check31 : primorialChainCheck 4473 primorial4473 184 17388521 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 17388521 17391331 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17388521) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 17303677 17309107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17303677)
    (mid := 17306453) (hi := 17309107) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 17309107 17314697 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17309107)
    (mid := 17311901) (hi := 17314697) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 17314697 17320249 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17314697)
    (mid := 17317523) (hi := 17320249) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 17320249 17325619 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17320249)
    (mid := 17322941) (hi := 17325619) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 17325619 17331163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17325619)
    (mid := 17328379) (hi := 17331163) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 17331163 17336633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17331163)
    (mid := 17333941) (hi := 17336633) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 17336633 17342141 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17336633)
    (mid := 17339423) (hi := 17342141) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 17342141 17347391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17342141)
    (mid := 17344849) (hi := 17347391) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 17347391 17352859 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17347391)
    (mid := 17350139) (hi := 17352859) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 17352859 17358373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17352859)
    (mid := 17355647) (hi := 17358373) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 17358373 17363947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17358373)
    (mid := 17361191) (hi := 17363947) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 17363947 17369351 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17363947)
    (mid := 17366663) (hi := 17369351) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 17369351 17374817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17369351)
    (mid := 17372119) (hi := 17374817) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 17374817 17380217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17374817)
    (mid := 17377501) (hi := 17380217) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 17380217 17385757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17380217)
    (mid := 17383031) (hi := 17385757) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 17385757 17391331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17385757)
    (mid := 17388521) (hi := 17391331) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 17303677 17314697 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17303677)
    (mid := 17309107) (hi := 17314697) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 17314697 17325619 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17314697)
    (mid := 17320249) (hi := 17325619) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 17325619 17336633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17325619)
    (mid := 17331163) (hi := 17336633) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 17336633 17347391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17336633)
    (mid := 17342141) (hi := 17347391) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 17347391 17358373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17347391)
    (mid := 17352859) (hi := 17358373) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 17358373 17369351 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17358373)
    (mid := 17363947) (hi := 17369351) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 17369351 17380217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17369351)
    (mid := 17374817) (hi := 17380217) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 17380217 17391331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17380217)
    (mid := 17385757) (hi := 17391331) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 17303677 17325619 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17303677)
    (mid := 17314697) (hi := 17325619) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 17325619 17347391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17325619)
    (mid := 17336633) (hi := 17347391) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 17347391 17369351 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17347391)
    (mid := 17358373) (hi := 17369351) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 17369351 17391331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17369351)
    (mid := 17380217) (hi := 17391331) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 17303677 17347391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17303677)
    (mid := 17325619) (hi := 17347391) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 17347391 17391331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17347391)
    (mid := 17369351) (hi := 17391331) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 17303677 17391331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17303677)
    (mid := 17347391) (hi := 17391331) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 17303677 17391331 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block197

#print axioms B699MiddleExtension.PrimorialBlocks.Block197.joined
