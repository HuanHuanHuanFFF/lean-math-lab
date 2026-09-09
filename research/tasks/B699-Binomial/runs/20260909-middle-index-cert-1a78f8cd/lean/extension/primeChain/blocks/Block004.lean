import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block004

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [359483, 359663, 359837, 360007, 360187, 360337, 360511, 360653, 360827, 361003, 361183, 361363, 361541, 361723, 361903, 362081]
theorem check0 : primorialChainCheck 4473 primorial4473 184 359311 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 359311 362081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 359311) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [362237, 362419, 362599, 362759, 362941, 363119, 363277, 363439, 363619, 363799, 363977, 364141, 364321, 364499, 364669, 364853]
theorem check1 : primorialChainCheck 4473 primorial4473 184 362081 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 362081 364853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 362081) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [365021, 365201, 365377, 365557, 365699, 365851, 366031, 366211, 366383, 366547, 366727, 366907, 367069, 367243, 367427, 367603]
theorem check2 : primorialChainCheck 4473 primorial4473 184 364853 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 364853 367603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 364853) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [367781, 367957, 368141, 368323, 368507, 368689, 368873, 369029, 369211, 369361, 369539, 369709, 369893, 370067, 370247, 370427]
theorem check3 : primorialChainCheck 4473 primorial4473 184 367603 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 367603 370427 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 367603) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [370609, 370793, 370949, 371131, 371311, 371491, 371669, 371851, 372023, 372179, 372353, 372523, 372707, 372881, 373063, 373231]
theorem check4 : primorialChainCheck 4473 primorial4473 184 370427 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 370427 373231 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 370427) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [373393, 373567, 373721, 373903, 374083, 374239, 374399, 374557, 374741, 374909, 375091, 375259, 375443, 375623, 375799, 375983]
theorem check5 : primorialChainCheck 4473 primorial4473 184 373231 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 373231 375983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 373231) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [376153, 376307, 376483, 376657, 376841, 377021, 377197, 377371, 377543, 377717, 377887, 378071, 378253, 378407, 378583, 378761]
theorem check6 : primorialChainCheck 4473 primorial4473 184 375983 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 375983 378761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 375983) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [378941, 379123, 379307, 379459, 379633, 379817, 379999, 380179, 380363, 380533, 380713, 380881, 381061, 381239, 381419, 381569]
theorem check7 : primorialChainCheck 4473 primorial4473 184 378761 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 378761 381569 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 378761) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [381749, 381917, 382087, 382271, 382429, 382601, 382777, 382961, 383143, 383321, 383489, 383659, 383839, 384017, 384193, 384367]
theorem check8 : primorialChainCheck 4473 primorial4473 184 381569 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 381569 384367 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 381569) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [384547, 384719, 384889, 385069, 385249, 385433, 385607, 385783, 385967, 386149, 386333, 386501, 386677, 386851, 387031, 387203]
theorem check9 : primorialChainCheck 4473 primorial4473 184 384367 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 384367 387203 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 384367) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [387371, 387551, 387727, 387911, 388081, 388259, 388403, 388573, 388757, 388937, 389117, 389299, 389483, 389663, 389839, 390001]
theorem check10 : primorialChainCheck 4473 primorial4473 184 387203 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 387203 390001 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 387203) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [390161, 390343, 390527, 390707, 390889, 391073, 391249, 391403, 391579, 391757, 391939, 392113, 392297, 392477, 392647, 392831]
theorem check11 : primorialChainCheck 4473 primorial4473 184 390001 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 390001 392831 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 390001) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [393013, 393191, 393373, 393557, 393739, 393919, 394099, 394271, 394453, 394637, 394819, 394993, 395173, 395323, 395491, 395671]
theorem check12 : primorialChainCheck 4473 primorial4473 184 392831 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 392831 395671 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 392831) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [395851, 396031, 396203, 396379, 396563, 396733, 396887, 397063, 397237, 397379, 397549, 397729, 397907, 398087, 398267, 398441]
theorem check13 : primorialChainCheck 4473 primorial4473 184 395671 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 395671 398441 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 395671) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [398621, 398771, 398941, 399107, 399283, 399439, 399617, 399793, 399953, 400123, 400307, 400481, 400657, 400837, 401017, 401201]
theorem check14 : primorialChainCheck 4473 primorial4473 184 398441 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 398441 401201 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 398441) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [401381, 401551, 401711, 401887, 402071, 402253, 402419, 402601, 402769, 402949, 403133, 403309, 403483, 403661, 403831, 404011]
theorem check15 : primorialChainCheck 4473 primorial4473 184 401201 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 401201 404011 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 401201) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [404191, 404357, 404539, 404713, 404851, 405029, 405211, 405373, 405553, 405731, 405901, 406073, 406253, 406423, 406591, 406739]
theorem check16 : primorialChainCheck 4473 primorial4473 184 404011 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 404011 406739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 404011) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [406907, 407083, 407263, 407437, 407621, 407801, 407977, 408137, 408311, 408491, 408659, 408841, 409021, 409187, 409369, 409543]
theorem check17 : primorialChainCheck 4473 primorial4473 184 406739 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 406739 409543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 406739) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [409723, 409901, 410063, 410243, 410413, 410587, 410759, 410929, 411113, 411287, 411469, 411641, 411823, 412007, 412189, 412343]
theorem check18 : primorialChainCheck 4473 primorial4473 184 409543 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 409543 412343 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 409543) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [412493, 412667, 412849, 413033, 413207, 413353, 413537, 413719, 413887, 414061, 414241, 414413, 414577, 414737, 414913, 415097]
theorem check19 : primorialChainCheck 4473 primorial4473 184 412343 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 412343 415097 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 412343) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [415273, 415447, 415631, 415801, 415979, 416159, 416333, 416513, 416693, 416873, 417037, 417217, 417383, 417559, 417737, 417899]
theorem check20 : primorialChainCheck 4473 primorial4473 184 415097 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 415097 417899 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 415097) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [418079, 418259, 418427, 418603, 418787, 418961, 419141, 419317, 419491, 419651, 419831, 420001, 420163, 420341, 420521, 420691]
theorem check21 : primorialChainCheck 4473 primorial4473 184 417899 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 417899 420691 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 417899) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [420859, 421037, 421207, 421381, 421559, 421741, 421913, 422089, 422267, 422431, 422581, 422761, 422927, 423109, 423289, 423469]
theorem check22 : primorialChainCheck 4473 primorial4473 184 420691 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 420691 423469 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 420691) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [423649, 423823, 424007, 424187, 424351, 424519, 424693, 424867, 425039, 425207, 425387, 425563, 425713, 425879, 426061, 426233]
theorem check23 : primorialChainCheck 4473 primorial4473 184 423469 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 423469 426233 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 423469) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [426407, 426583, 426763, 426941, 427117, 427283, 427457, 427621, 427789, 427969, 428149, 428303, 428473, 428657, 428833, 429017]
theorem check24 : primorialChainCheck 4473 primorial4473 184 426233 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 426233 429017 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 426233) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [429197, 429367, 429551, 429733, 429917, 430093, 430277, 430453, 430603, 430783, 430957, 431141, 431311, 431479, 431663, 431833]
theorem check25 : primorialChainCheck 4473 primorial4473 184 429017 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 429017 431833 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 429017) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [432007, 432167, 432349, 432527, 432661, 432833, 433003, 433187, 433369, 433549, 433729, 433889, 434039, 434221, 434389, 434573]
theorem check26 : primorialChainCheck 4473 primorial4473 184 431833 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 431833 434573 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 431833) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [434743, 434927, 435109, 435287, 435451, 435623, 435779, 435949, 436127, 436309, 436483, 436651, 436831, 437011, 437191, 437363]
theorem check27 : primorialChainCheck 4473 primorial4473 184 434573 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 434573 437363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 434573) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [437543, 437719, 437881, 438049, 438233, 438409, 438589, 438769, 438953, 439133, 439303, 439471, 439639, 439823, 439991, 440171]
theorem check28 : primorialChainCheck 4473 primorial4473 184 437363 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 437363 440171 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 437363) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [440347, 440527, 440711, 440893, 441073, 441257, 441421, 441587, 441751, 441923, 442097, 442271, 442447, 442619, 442789, 442973]
theorem check29 : primorialChainCheck 4473 primorial4473 184 440171 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 440171 442973 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 440171) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [443153, 443293, 443467, 443629, 443791, 443953, 444131, 444307, 444487, 444671, 444841, 445021, 445199, 445363, 445541, 445703]
theorem check30 : primorialChainCheck 4473 primorial4473 184 442973 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 442973 445703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 442973) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [445883, 446053, 446231, 446401, 446569, 446753, 446933, 447107, 447263, 447443, 447617, 447793, 447961, 448141, 448321, 448451]
theorem check31 : primorialChainCheck 4473 primorial4473 184 445703 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 445703 448451 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 445703) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 359311 364853 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 359311)
    (mid := 362081) (hi := 364853) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 364853 370427 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 364853)
    (mid := 367603) (hi := 370427) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 370427 375983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 370427)
    (mid := 373231) (hi := 375983) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 375983 381569 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 375983)
    (mid := 378761) (hi := 381569) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 381569 387203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 381569)
    (mid := 384367) (hi := 387203) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 387203 392831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 387203)
    (mid := 390001) (hi := 392831) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 392831 398441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 392831)
    (mid := 395671) (hi := 398441) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 398441 404011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 398441)
    (mid := 401201) (hi := 404011) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 404011 409543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 404011)
    (mid := 406739) (hi := 409543) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 409543 415097 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 409543)
    (mid := 412343) (hi := 415097) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 415097 420691 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 415097)
    (mid := 417899) (hi := 420691) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 420691 426233 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 420691)
    (mid := 423469) (hi := 426233) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 426233 431833 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 426233)
    (mid := 429017) (hi := 431833) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 431833 437363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 431833)
    (mid := 434573) (hi := 437363) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 437363 442973 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 437363)
    (mid := 440171) (hi := 442973) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 442973 448451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 442973)
    (mid := 445703) (hi := 448451) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 359311 370427 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 359311)
    (mid := 364853) (hi := 370427) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 370427 381569 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 370427)
    (mid := 375983) (hi := 381569) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 381569 392831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 381569)
    (mid := 387203) (hi := 392831) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 392831 404011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 392831)
    (mid := 398441) (hi := 404011) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 404011 415097 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 404011)
    (mid := 409543) (hi := 415097) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 415097 426233 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 415097)
    (mid := 420691) (hi := 426233) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 426233 437363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 426233)
    (mid := 431833) (hi := 437363) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 437363 448451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 437363)
    (mid := 442973) (hi := 448451) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 359311 381569 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 359311)
    (mid := 370427) (hi := 381569) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 381569 404011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 381569)
    (mid := 392831) (hi := 404011) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 404011 426233 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 404011)
    (mid := 415097) (hi := 426233) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 426233 448451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 426233)
    (mid := 437363) (hi := 448451) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 359311 404011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 359311)
    (mid := 381569) (hi := 404011) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 404011 448451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 404011)
    (mid := 426233) (hi := 448451) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 359311 448451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 359311)
    (mid := 404011) (hi := 448451) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 359311 448451 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block004

#print axioms B699MiddleExtension.PrimorialBlocks.Block004.joined
