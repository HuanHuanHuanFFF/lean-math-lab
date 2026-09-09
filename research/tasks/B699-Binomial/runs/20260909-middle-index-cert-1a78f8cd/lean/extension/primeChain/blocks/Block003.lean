import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block003

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [269923, 270097, 270271, 270451, 270631, 270799, 270973, 271129, 271289, 271471, 271651, 271829, 272011, 272191, 272369, 272549]
theorem check0 : primorialChainCheck 4473 primorial4473 184 269749 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 269749 272549 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 269749) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [272719, 272903, 273083, 273253, 273433, 273617, 273797, 273979, 274163, 274333, 274517, 274697, 274871, 275053, 275227, 275399]
theorem check1 : primorialChainCheck 4473 primorial4473 184 272549 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 272549 275399 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 272549) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [275581, 275741, 275923, 276091, 276257, 276439, 276623, 276781, 276961, 277099, 277279, 277429, 277603, 277787, 277961, 278143]
theorem check2 : primorialChainCheck 4473 primorial4473 184 275399 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 275399 278143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 275399) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [278321, 278503, 278687, 278867, 279047, 279221, 279397, 279577, 279761, 279941, 280121, 280303, 280487, 280639, 280817, 280997]
theorem check3 : primorialChainCheck 4473 primorial4473 184 278143 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 278143 280997 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 278143) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [281167, 281339, 281509, 281683, 281867, 282019, 282167, 282349, 282493, 282677, 282851, 283027, 283211, 283369, 283553, 283721]
theorem check4 : primorialChainCheck 4473 primorial4473 184 280997 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 280997 283721 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 280997) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [283873, 284057, 284237, 284413, 284593, 284777, 284957, 285139, 285317, 285497, 285673, 285841, 286019, 286199, 286381, 286553]
theorem check5 : primorialChainCheck 4473 primorial4473 184 283721 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 283721 286553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 283721) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [286733, 286873, 287057, 287239, 287393, 287557, 287731, 287887, 288061, 288241, 288413, 288583, 288767, 288947, 289129, 289309]
theorem check6 : primorialChainCheck 4473 primorial4473 184 286553 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 286553 289309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 286553) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [289489, 289669, 289853, 290033, 290209, 290393, 290557, 290737, 290897, 291077, 291257, 291439, 291619, 291791, 291971, 292147]
theorem check7 : primorialChainCheck 4473 primorial4473 184 289309 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 289309 292147 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 289309) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [292319, 292493, 292673, 292849, 293021, 293201, 293357, 293507, 293681, 293863, 294043, 294227, 294403, 294563, 294731, 294911]
theorem check8 : primorialChainCheck 4473 primorial4473 184 292147 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 292147 294911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 292147) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [295081, 295259, 295441, 295601, 295777, 295961, 296137, 296299, 296479, 296663, 296843, 297023, 297191, 297371, 297533, 297707]
theorem check9 : primorialChainCheck 4473 primorial4473 184 294911 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 294911 297707 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 294911) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [297889, 298063, 298247, 298427, 298607, 298777, 298943, 299113, 299287, 299471, 299653, 299807, 299983, 300163, 300347, 300511]
theorem check10 : primorialChainCheck 4473 primorial4473 184 297707 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 297707 300511 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 297707) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [300691, 300869, 301051, 301219, 301403, 301583, 301759, 301943, 302123, 302299, 302483, 302663, 302843, 303019, 303187, 303371]
theorem check11 : primorialChainCheck 4473 primorial4473 184 300511 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 300511 303371 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 300511) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [303553, 303731, 303907, 304091, 304259, 304439, 304609, 304789, 304961, 305143, 305297, 305479, 305663, 305839, 306023, 306193]
theorem check12 : primorialChainCheck 4473 primorial4473 184 303371 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 303371 306193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 303371) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [306377, 306541, 306707, 306883, 307067, 307243, 307423, 307589, 307759, 307939, 308117, 308293, 308467, 308641, 308813, 308989]
theorem check13 : primorialChainCheck 4473 primorial4473 184 306193 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 306193 308989 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 306193) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [309173, 309317, 309493, 309677, 309857, 310027, 310187, 310363, 310547, 310729, 310901, 311041, 311203, 311371, 311551, 311713]
theorem check14 : primorialChainCheck 4473 primorial4473 184 308989 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 308989 311713 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 308989) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [311897, 312073, 312253, 312427, 312601, 312779, 312943, 313127, 313307, 313477, 313661, 313829, 314003, 314173, 314357, 314527]
theorem check15 : primorialChainCheck 4473 primorial4473 184 311713 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 311713 314527 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 311713) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [314711, 314879, 315059, 315223, 315407, 315589, 315751, 315907, 316087, 316271, 316453, 316637, 316819, 317003, 317179, 317363]
theorem check16 : primorialChainCheck 4473 primorial4473 184 314527 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 314527 317363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 314527) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [317539, 317717, 317887, 318023, 318203, 318377, 318559, 318743, 318919, 319097, 319279, 319453, 319607, 319763, 319937, 320119]
theorem check17 : primorialChainCheck 4473 primorial4473 184 317363 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 317363 320119 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 317363) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [320303, 320483, 320659, 320843, 321017, 321199, 321383, 321553, 321733, 321911, 322093, 322271, 322433, 322613, 322783, 322963]
theorem check18 : primorialChainCheck 4473 primorial4473 184 320119 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 320119 322963 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 320119) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [323137, 323273, 323443, 323623, 323803, 323987, 324161, 324341, 324523, 324707, 324889, 325063, 325231, 325411, 325571, 325753]
theorem check19 : primorialChainCheck 4473 primorial4473 184 322963 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 322963 325753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 322963) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [325921, 326101, 326257, 326441, 326617, 326779, 326951, 327133, 327317, 327499, 327673, 327853, 328037, 328213, 328397, 328579]
theorem check20 : primorialChainCheck 4473 primorial4473 184 325753 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 325753 328579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 325753) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [328753, 328931, 329111, 329293, 329473, 329657, 329803, 329977, 330149, 330331, 330509, 330689, 330859, 331043, 331217, 331399]
theorem check21 : primorialChainCheck 4473 primorial4473 184 328579 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 328579 331399 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 328579) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [331579, 331753, 331937, 332117, 332287, 332471, 332641, 332803, 332987, 333161, 333341, 333517, 333701, 333871, 334049, 334231]
theorem check22 : primorialChainCheck 4473 primorial4473 184 331399 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 331399 334231 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 331399) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [334403, 334561, 334727, 334897, 335081, 335261, 335429, 335609, 335771, 335953, 336121, 336263, 336437, 336613, 336793, 336977]
theorem check23 : primorialChainCheck 4473 primorial4473 184 334231 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 334231 336977 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 334231) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [337153, 337327, 337511, 337691, 337873, 338033, 338213, 338389, 338573, 338753, 338927, 339107, 339289, 339467, 339649, 339827]
theorem check24 : primorialChainCheck 4473 primorial4473 184 336977 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 336977 339827 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 336977) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [340007, 340183, 340339, 340519, 340693, 340877, 341059, 341233, 341357, 341521, 341701, 341879, 342061, 342241, 342421, 342599]
theorem check25 : primorialChainCheck 4473 primorial4473 184 339827 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 339827 342599 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 339827) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [342761, 342929, 343087, 343267, 343433, 343601, 343771, 343951, 344117, 344293, 344453, 344629, 344807, 344987, 345143, 345311]
theorem check26 : primorialChainCheck 4473 primorial4473 184 342599 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 342599 345311 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 342599) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [345487, 345659, 345823, 345997, 346169, 346349, 346529, 346711, 346891, 347071, 347251, 347411, 347591, 347773, 347957, 348097]
theorem check27 : primorialChainCheck 4473 primorial4473 184 345311 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 345311 348097 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 345311) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [348269, 348451, 348629, 348811, 348991, 349171, 349343, 349519, 349697, 349871, 350039, 350219, 350381, 350563, 350747, 350899]
theorem check28 : primorialChainCheck 4473 primorial4473 184 348097 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 348097 350899 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 348097) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [351079, 351259, 351437, 351599, 351779, 351959, 352133, 352309, 352493, 352661, 352841, 353021, 353203, 353359, 353531, 353711]
theorem check29 : primorialChainCheck 4473 primorial4473 184 350899 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 350899 353711 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 350899) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [353891, 354073, 354257, 354439, 354619, 354799, 354983, 355139, 355321, 355501, 355679, 355853, 356023, 356197, 356351, 356533]
theorem check30 : primorialChainCheck 4473 primorial4473 184 353711 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 353711 356533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 353711) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [356701, 356869, 357047, 357229, 357389, 357571, 357739, 357913, 358079, 358243, 358427, 358607, 358783, 358951, 359129, 359311]
theorem check31 : primorialChainCheck 4473 primorial4473 184 356533 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 356533 359311 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 356533) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 269749 275399 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 269749)
    (mid := 272549) (hi := 275399) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 275399 280997 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 275399)
    (mid := 278143) (hi := 280997) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 280997 286553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 280997)
    (mid := 283721) (hi := 286553) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 286553 292147 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 286553)
    (mid := 289309) (hi := 292147) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 292147 297707 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 292147)
    (mid := 294911) (hi := 297707) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 297707 303371 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 297707)
    (mid := 300511) (hi := 303371) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 303371 308989 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 303371)
    (mid := 306193) (hi := 308989) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 308989 314527 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 308989)
    (mid := 311713) (hi := 314527) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 314527 320119 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 314527)
    (mid := 317363) (hi := 320119) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 320119 325753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 320119)
    (mid := 322963) (hi := 325753) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 325753 331399 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 325753)
    (mid := 328579) (hi := 331399) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 331399 336977 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 331399)
    (mid := 334231) (hi := 336977) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 336977 342599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 336977)
    (mid := 339827) (hi := 342599) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 342599 348097 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 342599)
    (mid := 345311) (hi := 348097) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 348097 353711 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 348097)
    (mid := 350899) (hi := 353711) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 353711 359311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 353711)
    (mid := 356533) (hi := 359311) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 269749 280997 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 269749)
    (mid := 275399) (hi := 280997) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 280997 292147 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 280997)
    (mid := 286553) (hi := 292147) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 292147 303371 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 292147)
    (mid := 297707) (hi := 303371) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 303371 314527 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 303371)
    (mid := 308989) (hi := 314527) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 314527 325753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 314527)
    (mid := 320119) (hi := 325753) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 325753 336977 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 325753)
    (mid := 331399) (hi := 336977) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 336977 348097 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 336977)
    (mid := 342599) (hi := 348097) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 348097 359311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 348097)
    (mid := 353711) (hi := 359311) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 269749 292147 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 269749)
    (mid := 280997) (hi := 292147) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 292147 314527 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 292147)
    (mid := 303371) (hi := 314527) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 314527 336977 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 314527)
    (mid := 325753) (hi := 336977) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 336977 359311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 336977)
    (mid := 348097) (hi := 359311) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 269749 314527 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 269749)
    (mid := 292147) (hi := 314527) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 314527 359311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 314527)
    (mid := 336977) (hi := 359311) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 269749 359311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 269749)
    (mid := 314527) (hi := 359311) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 269749 359311 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block003

#print axioms B699MiddleExtension.PrimorialBlocks.Block003.joined
