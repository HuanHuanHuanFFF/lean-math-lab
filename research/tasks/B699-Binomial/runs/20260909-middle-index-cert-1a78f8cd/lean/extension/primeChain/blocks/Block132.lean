import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block132

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [11620211, 11620393, 11620577, 11620733, 11620901, 11621039, 11621213, 11621383, 11621543, 11621723, 11621873, 11622047, 11622227, 11622379, 11622563, 11622733]
theorem check0 : primorialChainCheck 4473 primorial4473 184 11620051 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 11620051 11622733 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11620051) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [11622911, 11623091, 11623273, 11623457, 11623637, 11623819, 11623999, 11624149, 11624329, 11624497, 11624681, 11624857, 11625041, 11625221, 11625401, 11625583]
theorem check1 : primorialChainCheck 4473 primorial4473 184 11622733 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 11622733 11625583 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11622733) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [11625763, 11625931, 11626093, 11626273, 11626429, 11626607, 11626789, 11626969, 11627153, 11627323, 11627491, 11627663, 11627843, 11628013, 11628191, 11628373]
theorem check2 : primorialChainCheck 4473 primorial4473 184 11625583 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 11625583 11628373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11625583) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [11628557, 11628733, 11628907, 11629091, 11629271, 11629447, 11629571, 11629753, 11629931, 11630051, 11630233, 11630407, 11630503, 11630677, 11630849, 11631029]
theorem check3 : primorialChainCheck 4473 primorial4473 184 11628373 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 11628373 11631029 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11628373) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [11631187, 11631341, 11631509, 11631647, 11631827, 11632003, 11632157, 11632307, 11632487, 11632637, 11632813, 11632993, 11633173, 11633351, 11633527, 11633701]
theorem check4 : primorialChainCheck 4473 primorial4473 184 11631029 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 11631029 11633701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11631029) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [11633879, 11634053, 11634223, 11634407, 11634589, 11634773, 11634913, 11635097, 11635229, 11635373, 11635553, 11635727, 11635901, 11636071, 11636243, 11636423]
theorem check5 : primorialChainCheck 4473 primorial4473 184 11633701 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 11633701 11636423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11633701) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [11636587, 11636771, 11636951, 11637107, 11637289, 11637467, 11637643, 11637827, 11638001, 11638181, 11638349, 11638531, 11638699, 11638877, 11639059, 11639213]
theorem check6 : primorialChainCheck 4473 primorial4473 184 11636423 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 11636423 11639213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11636423) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [11639389, 11639569, 11639741, 11639897, 11640077, 11640253, 11640403, 11640583, 11640763, 11640943, 11641121, 11641249, 11641429, 11641613, 11641783, 11641961]
theorem check7 : primorialChainCheck 4473 primorial4473 184 11639213 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 11639213 11641961 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11639213) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [11642107, 11642287, 11642447, 11642629, 11642797, 11642959, 11643133, 11643311, 11643481, 11643661, 11643839, 11644021, 11644117, 11644301, 11644483, 11644637]
theorem check8 : primorialChainCheck 4473 primorial4473 184 11641961 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 11641961 11644637 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11641961) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [11644819, 11644999, 11645177, 11645351, 11645509, 11645687, 11645869, 11646043, 11646227, 11646407, 11646589, 11646773, 11646953, 11647127, 11647303, 11647483]
theorem check9 : primorialChainCheck 4473 primorial4473 184 11644637 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 11644637 11647483 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11644637) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [11647667, 11647819, 11648003, 11648183, 11648363, 11648531, 11648713, 11648887, 11649061, 11649227, 11649401, 11649563, 11649731, 11649901, 11650073, 11650241]
theorem check10 : primorialChainCheck 4473 primorial4473 184 11647483 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 11647483 11650241 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11647483) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [11650403, 11650579, 11650741, 11650921, 11651083, 11651267, 11651449, 11651621, 11651797, 11651977, 11652161, 11652343, 11652523, 11652703, 11652887, 11653069]
theorem check11 : primorialChainCheck 4473 primorial4473 184 11650241 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 11650241 11653069 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11650241) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [11653231, 11653399, 11653583, 11653753, 11653937, 11654107, 11654287, 11654443, 11654623, 11654807, 11654987, 11655157, 11655337, 11655517, 11655701, 11655827]
theorem check12 : primorialChainCheck 4473 primorial4473 184 11653069 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 11653069 11655827 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11653069) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [11655997, 11656181, 11656361, 11656537, 11656721, 11656891, 11657047, 11657227, 11657383, 11657567, 11657749, 11657917, 11658089, 11658253, 11658433, 11658601]
theorem check13 : primorialChainCheck 4473 primorial4473 184 11655827 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 11655827 11658601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11655827) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [11658767, 11658949, 11659133, 11659301, 11659481, 11659651, 11659819, 11660003, 11660177, 11660339, 11660503, 11660669, 11660843, 11661019, 11661197, 11661379]
theorem check14 : primorialChainCheck 4473 primorial4473 184 11658601 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 11658601 11661379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11658601) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [11661563, 11661739, 11661911, 11662093, 11662271, 11662393, 11662577, 11662711, 11662877, 11663053, 11663227, 11663401, 11663579, 11663731, 11663909, 11664089]
theorem check15 : primorialChainCheck 4473 primorial4473 184 11661379 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 11661379 11664089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11661379) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [11664253, 11664437, 11664619, 11664799, 11664967, 11665151, 11665333, 11665501, 11665679, 11665861, 11666041, 11666191, 11666371, 11666549, 11666701, 11666873]
theorem check16 : primorialChainCheck 4473 primorial4473 184 11664089 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 11664089 11666873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11664089) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [11667037, 11667221, 11667391, 11667547, 11667731, 11667911, 11668073, 11668229, 11668403, 11668583, 11668757, 11668903, 11669081, 11669261, 11669417, 11669587]
theorem check17 : primorialChainCheck 4473 primorial4473 184 11666873 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 11666873 11669587 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11666873) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [11669767, 11669951, 11670121, 11670293, 11670467, 11670641, 11670817, 11671001, 11671171, 11671351, 11671523, 11671663, 11671837, 11672009, 11672191, 11672371]
theorem check18 : primorialChainCheck 4473 primorial4473 184 11669587 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 11669587 11672371 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11669587) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [11672513, 11672677, 11672851, 11672977, 11673161, 11673313, 11673491, 11673671, 11673841, 11673989, 11674171, 11674349, 11674511, 11674687, 11674853, 11675021]
theorem check19 : primorialChainCheck 4473 primorial4473 184 11672371 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 11672371 11675021 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11672371) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [11675179, 11675341, 11675507, 11675689, 11675849, 11676031, 11676211, 11676361, 11676517, 11676701, 11676883, 11677063, 11677241, 11677409, 11677531, 11677709]
theorem check20 : primorialChainCheck 4473 primorial4473 184 11675021 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 11675021 11677709 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11675021) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [11677891, 11678063, 11678221, 11678393, 11678533, 11678707, 11678869, 11679049, 11679223, 11679407, 11679589, 11679761, 11679937, 11680099, 11680267, 11680379]
theorem check21 : primorialChainCheck 4473 primorial4473 184 11677709 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 11677709 11680379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11677709) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [11680519, 11680693, 11680871, 11681053, 11681237, 11681413, 11681569, 11681741, 11681911, 11682061, 11682241, 11682421, 11682577, 11682751, 11682917, 11683099]
theorem check22 : primorialChainCheck 4473 primorial4473 184 11680379 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 11680379 11683099 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11680379) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [11683283, 11683459, 11683627, 11683769, 11683951, 11684111, 11684291, 11684461, 11684633, 11684749, 11684929, 11685101, 11685283, 11685461, 11685643, 11685823]
theorem check23 : primorialChainCheck 4473 primorial4473 184 11683099 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 11683099 11685823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11683099) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [11685991, 11686133, 11686313, 11686471, 11686637, 11686819, 11686999, 11687131, 11687309, 11687491, 11687639, 11687803, 11687953, 11688121, 11688293, 11688473]
theorem check24 : primorialChainCheck 4473 primorial4473 184 11685823 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 11685823 11688473 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11685823) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [11688631, 11688797, 11688961, 11689133, 11689303, 11689481, 11689661, 11689837, 11690017, 11690153, 11690333, 11690513, 11690677, 11690843, 11691011, 11691179]
theorem check25 : primorialChainCheck 4473 primorial4473 184 11688473 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 11688473 11691179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11688473) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [11691353, 11691509, 11691689, 11691871, 11692033, 11692217, 11692399, 11692567, 11692739, 11692883, 11693063, 11693239, 11693419, 11693599, 11693767, 11693939]
theorem check26 : primorialChainCheck 4473 primorial4473 184 11691179 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 11691179 11693939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11691179) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [11694121, 11694301, 11694469, 11694653, 11694829, 11695003, 11695171, 11695349, 11695531, 11695709, 11695889, 11696071, 11696249, 11696431, 11696569, 11696747]
theorem check27 : primorialChainCheck 4473 primorial4473 184 11693939 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 11693939 11696747 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11693939) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [11696929, 11697109, 11697289, 11697473, 11697641, 11697821, 11697979, 11698117, 11698289, 11698459, 11698639, 11698823, 11698991, 11699173, 11699357, 11699539]
theorem check28 : primorialChainCheck 4473 primorial4473 184 11696747 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 11696747 11699539 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11696747) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [11699717, 11699899, 11700083, 11700223, 11700407, 11700589, 11700763, 11700929, 11701111, 11701279, 11701429, 11701609, 11701771, 11701951, 11702113, 11702297]
theorem check29 : primorialChainCheck 4473 primorial4473 184 11699539 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 11699539 11702297 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11699539) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [11702479, 11702657, 11702839, 11703023, 11703203, 11703371, 11703551, 11703707, 11703851, 11704027, 11704181, 11704337, 11704501, 11704673, 11704853, 11705033]
theorem check30 : primorialChainCheck 4473 primorial4473 184 11702297 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 11702297 11705033 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11702297) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [11705207, 11705371, 11705549, 11705723, 11705893, 11706067, 11706209, 11706377, 11706559, 11706731, 11706889, 11707063, 11707231, 11707411, 11707537, 11707711]
theorem check31 : primorialChainCheck 4473 primorial4473 184 11705033 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 11705033 11707711 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11705033) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 11620051 11625583 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11620051)
    (mid := 11622733) (hi := 11625583) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 11625583 11631029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11625583)
    (mid := 11628373) (hi := 11631029) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 11631029 11636423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11631029)
    (mid := 11633701) (hi := 11636423) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 11636423 11641961 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11636423)
    (mid := 11639213) (hi := 11641961) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 11641961 11647483 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11641961)
    (mid := 11644637) (hi := 11647483) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 11647483 11653069 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11647483)
    (mid := 11650241) (hi := 11653069) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 11653069 11658601 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11653069)
    (mid := 11655827) (hi := 11658601) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 11658601 11664089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11658601)
    (mid := 11661379) (hi := 11664089) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 11664089 11669587 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11664089)
    (mid := 11666873) (hi := 11669587) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 11669587 11675021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11669587)
    (mid := 11672371) (hi := 11675021) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 11675021 11680379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11675021)
    (mid := 11677709) (hi := 11680379) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 11680379 11685823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11680379)
    (mid := 11683099) (hi := 11685823) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 11685823 11691179 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11685823)
    (mid := 11688473) (hi := 11691179) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 11691179 11696747 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11691179)
    (mid := 11693939) (hi := 11696747) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 11696747 11702297 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11696747)
    (mid := 11699539) (hi := 11702297) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 11702297 11707711 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11702297)
    (mid := 11705033) (hi := 11707711) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 11620051 11631029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11620051)
    (mid := 11625583) (hi := 11631029) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 11631029 11641961 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11631029)
    (mid := 11636423) (hi := 11641961) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 11641961 11653069 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11641961)
    (mid := 11647483) (hi := 11653069) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 11653069 11664089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11653069)
    (mid := 11658601) (hi := 11664089) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 11664089 11675021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11664089)
    (mid := 11669587) (hi := 11675021) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 11675021 11685823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11675021)
    (mid := 11680379) (hi := 11685823) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 11685823 11696747 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11685823)
    (mid := 11691179) (hi := 11696747) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 11696747 11707711 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11696747)
    (mid := 11702297) (hi := 11707711) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 11620051 11641961 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11620051)
    (mid := 11631029) (hi := 11641961) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 11641961 11664089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11641961)
    (mid := 11653069) (hi := 11664089) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 11664089 11685823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11664089)
    (mid := 11675021) (hi := 11685823) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 11685823 11707711 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11685823)
    (mid := 11696747) (hi := 11707711) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 11620051 11664089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11620051)
    (mid := 11641961) (hi := 11664089) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 11664089 11707711 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11664089)
    (mid := 11685823) (hi := 11707711) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 11620051 11707711 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11620051)
    (mid := 11664089) (hi := 11707711) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 11620051 11707711 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block132

#print axioms B699MiddleExtension.PrimorialBlocks.Block132.joined
