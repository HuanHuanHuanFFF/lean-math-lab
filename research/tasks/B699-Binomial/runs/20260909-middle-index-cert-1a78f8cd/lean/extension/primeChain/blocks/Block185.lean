import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block185

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [16256507, 16256677, 16256843, 16257013, 16257191, 16257359, 16257529, 16257701, 16257883, 16258061, 16258237, 16258393, 16258573, 16258741, 16258909, 16259093]
theorem check0 : primorialChainCheck 4473 primorial4473 184 16256363 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 16256363 16259093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16256363) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [16259267, 16259447, 16259629, 16259813, 16259993, 16260173, 16260323, 16260499, 16260679, 16260847, 16261001, 16261183, 16261363, 16261541, 16261723, 16261901]
theorem check1 : primorialChainCheck 4473 primorial4473 184 16259093 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 16259093 16261901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16259093) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [16262083, 16262237, 16262381, 16262513, 16262683, 16262801, 16262969, 16263151, 16263307, 16263491, 16263671, 16263853, 16264033, 16264207, 16264387, 16264543]
theorem check2 : primorialChainCheck 4473 primorial4473 184 16261901 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 16261901 16264543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16261901) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [16264711, 16264891, 16265063, 16265239, 16265423, 16265597, 16265773, 16265947, 16266121, 16266269, 16266449, 16266631, 16266787, 16266967, 16267117, 16267291]
theorem check3 : primorialChainCheck 4473 primorial4473 184 16264543 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 16264543 16267291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16264543) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [16267451, 16267621, 16267799, 16267981, 16268137, 16268321, 16268501, 16268683, 16268839, 16268951, 16269133, 16269313, 16269481, 16269653, 16269821, 16269991]
theorem check4 : primorialChainCheck 4473 primorial4473 184 16267291 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 16267291 16269991 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16267291) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [16270117, 16270301, 16270451, 16270627, 16270811, 16270993, 16271173, 16271347, 16271531, 16271701, 16271881, 16272059, 16272229, 16272343, 16272527, 16272709]
theorem check5 : primorialChainCheck 4473 primorial4473 184 16269991 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 16269991 16272709 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16269991) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [16272887, 16273051, 16273223, 16273381, 16273531, 16273711, 16273883, 16274057, 16274239, 16274399, 16274579, 16274749, 16274911, 16275089, 16275269, 16275451]
theorem check6 : primorialChainCheck 4473 primorial4473 184 16272709 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 16272709 16275451 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16272709) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [16275619, 16275797, 16275979, 16276151, 16276319, 16276501, 16276669, 16276853, 16276961, 16277137, 16277309, 16277479, 16277659, 16277831, 16277999, 16278161]
theorem check7 : primorialChainCheck 4473 primorial4473 184 16275451 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 16275451 16278161 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16275451) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [16278341, 16278523, 16278679, 16278863, 16279037, 16279213, 16279391, 16279559, 16279723, 16279859, 16280041, 16280219, 16280393, 16280497, 16280657, 16280833]
theorem check8 : primorialChainCheck 4473 primorial4473 184 16278161 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 16278161 16280833 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16278161) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [16281011, 16281191, 16281373, 16281553, 16281709, 16281883, 16282009, 16282187, 16282361, 16282537, 16282709, 16282859, 16283041, 16283221, 16283381, 16283557]
theorem check9 : primorialChainCheck 4473 primorial4473 184 16280833 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 16280833 16283557 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16280833) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [16283723, 16283887, 16284071, 16284239, 16284407, 16284559, 16284739, 16284911, 16285091, 16285249, 16285421, 16285589, 16285769, 16285937, 16286117, 16286297]
theorem check10 : primorialChainCheck 4473 primorial4473 184 16283557 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 16283557 16286297 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16283557) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [16286447, 16286617, 16286747, 16286929, 16287113, 16287283, 16287461, 16287629, 16287811, 16287977, 16288127, 16288291, 16288471, 16288651, 16288819, 16289003]
theorem check11 : primorialChainCheck 4473 primorial4473 184 16286297 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 16286297 16289003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16286297) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [16289183, 16289363, 16289531, 16289701, 16289873, 16290047, 16290229, 16290409, 16290577, 16290751, 16290929, 16291091, 16291207, 16291381, 16291481, 16291663]
theorem check12 : primorialChainCheck 4473 primorial4473 184 16289003 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 16289003 16291663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16289003) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [16291837, 16292021, 16292203, 16292377, 16292561, 16292741, 16292923, 16293103, 16293271, 16293451, 16293619, 16293799, 16293961, 16294133, 16294307, 16294489]
theorem check13 : primorialChainCheck 4473 primorial4473 184 16291663 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 16291663 16294489 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16291663) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [16294673, 16294849, 16295023, 16295203, 16295371, 16295551, 16295731, 16295893, 16296061, 16296197, 16296349, 16296529, 16296713, 16296893, 16297069, 16297223]
theorem check14 : primorialChainCheck 4473 primorial4473 184 16294489 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 16294489 16297223 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16294489) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [16297399, 16297583, 16297759, 16297943, 16298123, 16298239, 16298417, 16298593, 16298761, 16298917, 16299013, 16299161, 16299337, 16299497, 16299667, 16299851]
theorem check15 : primorialChainCheck 4473 primorial4473 184 16297223 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 16297223 16299851 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16297223) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [16300027, 16300159, 16300321, 16300441, 16300607, 16300789, 16300967, 16301111, 16301291, 16301471, 16301633, 16301783, 16301959, 16302137, 16302317, 16302491]
theorem check16 : primorialChainCheck 4473 primorial4473 184 16299851 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 16299851 16302491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16299851) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [16302667, 16302827, 16303009, 16303193, 16303373, 16303549, 16303733, 16303909, 16304089, 16304251, 16304423, 16304599, 16304779, 16304963, 16305119, 16305293]
theorem check17 : primorialChainCheck 4473 primorial4473 184 16302491 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 16302491 16305293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16302491) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [16305461, 16305631, 16305811, 16305979, 16306127, 16306309, 16306489, 16306649, 16306819, 16307003, 16307183, 16307353, 16307537, 16307701, 16307881, 16308043]
theorem check18 : primorialChainCheck 4473 primorial4473 184 16305293 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 16305293 16308043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16305293) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [16308221, 16308377, 16308557, 16308713, 16308889, 16309063, 16309243, 16309411, 16309589, 16309763, 16309939, 16310111, 16310263, 16310423, 16310597, 16310773]
theorem check19 : primorialChainCheck 4473 primorial4473 184 16308043 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 16308043 16310773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16308043) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [16310953, 16311107, 16311289, 16311467, 16311649, 16311821, 16312003, 16312183, 16312363, 16312531, 16312693, 16312873, 16313057, 16313221, 16313393, 16313569]
theorem check20 : primorialChainCheck 4473 primorial4473 184 16310773 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 16310773 16313569 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16310773) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [16313749, 16313933, 16314049, 16314223, 16314391, 16314553, 16314719, 16314853, 16315037, 16315217, 16315379, 16315561, 16315723, 16315879, 16316059, 16316239]
theorem check21 : primorialChainCheck 4473 primorial4473 184 16313569 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 16313569 16316239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16313569) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [16316411, 16316569, 16316749, 16316933, 16317107, 16317283, 16317443, 16317619, 16317797, 16317967, 16318129, 16318303, 16318483, 16318667, 16318847, 16319027]
theorem check22 : primorialChainCheck 4473 primorial4473 184 16316239 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 16316239 16319027 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16316239) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [16319209, 16319383, 16319561, 16319731, 16319911, 16320089, 16320257, 16320431, 16320571, 16320739, 16320919, 16321103, 16321271, 16321451, 16321633, 16321807]
theorem check23 : primorialChainCheck 4473 primorial4473 184 16319027 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 16319027 16321807 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16319027) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [16321961, 16322081, 16322239, 16322417, 16322599, 16322783, 16322953, 16323137, 16323313, 16323487, 16323631, 16323809, 16323977, 16324151, 16324307, 16324447]
theorem check24 : primorialChainCheck 4473 primorial4473 184 16321807 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 16321807 16324447 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16321807) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [16324597, 16324757, 16324927, 16325107, 16325273, 16325447, 16325563, 16325719, 16325887, 16326059, 16326229, 16326407, 16326581, 16326763, 16326929, 16327093]
theorem check25 : primorialChainCheck 4473 primorial4473 184 16324447 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 16324447 16327093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16324447) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [16327243, 16327427, 16327603, 16327777, 16327943, 16328119, 16328287, 16328461, 16328639, 16328801, 16328981, 16329139, 16329323, 16329499, 16329623, 16329799]
theorem check26 : primorialChainCheck 4473 primorial4473 184 16327093 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 16327093 16329799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16327093) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [16329967, 16330151, 16330331, 16330487, 16330663, 16330843, 16331009, 16331191, 16331369, 16331533, 16331717, 16331879, 16332061, 16332241, 16332409, 16332593]
theorem check27 : primorialChainCheck 4473 primorial4473 184 16329799 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 16329799 16332593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16329799) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [16332739, 16332893, 16333069, 16333253, 16333433, 16333609, 16333781, 16333963, 16334137, 16334321, 16334497, 16334677, 16334839, 16335017, 16335199, 16335377]
theorem check28 : primorialChainCheck 4473 primorial4473 184 16332593 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 16332593 16335377 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16332593) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [16335559, 16335733, 16335901, 16336057, 16336241, 16336393, 16336553, 16336729, 16336913, 16337077, 16337231, 16337413, 16337593, 16337771, 16337953, 16338137]
theorem check29 : primorialChainCheck 4473 primorial4473 184 16335377 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 16335377 16338137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16335377) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [16338313, 16338437, 16338607, 16338781, 16338899, 16339067, 16339249, 16339429, 16339577, 16339723, 16339901, 16340053, 16340237, 16340411, 16340549, 16340729]
theorem check30 : primorialChainCheck 4473 primorial4473 184 16338137 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 16338137 16340729 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16338137) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [16340899, 16341079, 16341263, 16341439, 16341623, 16341781, 16341959, 16342129, 16342307, 16342483, 16342663, 16342847, 16343023, 16343191, 16343359, 16343519]
theorem check31 : primorialChainCheck 4473 primorial4473 184 16340729 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 16340729 16343519 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16340729) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 16256363 16261901 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16256363)
    (mid := 16259093) (hi := 16261901) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 16261901 16267291 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16261901)
    (mid := 16264543) (hi := 16267291) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 16267291 16272709 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16267291)
    (mid := 16269991) (hi := 16272709) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 16272709 16278161 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16272709)
    (mid := 16275451) (hi := 16278161) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 16278161 16283557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16278161)
    (mid := 16280833) (hi := 16283557) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 16283557 16289003 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16283557)
    (mid := 16286297) (hi := 16289003) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 16289003 16294489 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16289003)
    (mid := 16291663) (hi := 16294489) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 16294489 16299851 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16294489)
    (mid := 16297223) (hi := 16299851) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 16299851 16305293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16299851)
    (mid := 16302491) (hi := 16305293) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 16305293 16310773 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16305293)
    (mid := 16308043) (hi := 16310773) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 16310773 16316239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16310773)
    (mid := 16313569) (hi := 16316239) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 16316239 16321807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16316239)
    (mid := 16319027) (hi := 16321807) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 16321807 16327093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16321807)
    (mid := 16324447) (hi := 16327093) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 16327093 16332593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16327093)
    (mid := 16329799) (hi := 16332593) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 16332593 16338137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16332593)
    (mid := 16335377) (hi := 16338137) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 16338137 16343519 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16338137)
    (mid := 16340729) (hi := 16343519) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 16256363 16267291 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16256363)
    (mid := 16261901) (hi := 16267291) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 16267291 16278161 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16267291)
    (mid := 16272709) (hi := 16278161) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 16278161 16289003 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16278161)
    (mid := 16283557) (hi := 16289003) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 16289003 16299851 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16289003)
    (mid := 16294489) (hi := 16299851) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 16299851 16310773 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16299851)
    (mid := 16305293) (hi := 16310773) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 16310773 16321807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16310773)
    (mid := 16316239) (hi := 16321807) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 16321807 16332593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16321807)
    (mid := 16327093) (hi := 16332593) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 16332593 16343519 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16332593)
    (mid := 16338137) (hi := 16343519) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 16256363 16278161 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16256363)
    (mid := 16267291) (hi := 16278161) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 16278161 16299851 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16278161)
    (mid := 16289003) (hi := 16299851) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 16299851 16321807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16299851)
    (mid := 16310773) (hi := 16321807) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 16321807 16343519 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16321807)
    (mid := 16332593) (hi := 16343519) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 16256363 16299851 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16256363)
    (mid := 16278161) (hi := 16299851) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 16299851 16343519 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16299851)
    (mid := 16321807) (hi := 16343519) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 16256363 16343519 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16256363)
    (mid := 16299851) (hi := 16343519) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 16256363 16343519 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block185

#print axioms B699MiddleExtension.PrimorialBlocks.Block185.joined
