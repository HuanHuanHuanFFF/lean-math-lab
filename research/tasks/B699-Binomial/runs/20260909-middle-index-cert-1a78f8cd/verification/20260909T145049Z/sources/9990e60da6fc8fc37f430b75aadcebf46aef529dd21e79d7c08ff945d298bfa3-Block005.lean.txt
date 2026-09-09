import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block005

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [448633, 448807, 448969, 449153, 449333, 449473, 449653, 449833, 450011, 450193, 450377, 450557, 450727, 450899, 451069, 451249]
theorem check0 : primorialChainCheck 4473 primorial4473 184 448451 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 448451 451249 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 448451) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [451411, 451579, 451753, 451937, 452087, 452269, 452453, 452633, 452813, 452989, 453161, 453329, 453461, 453643, 453823, 453991]
theorem check1 : primorialChainCheck 4473 primorial4473 184 451249 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 451249 453991 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 451249) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [454159, 454331, 454513, 454679, 454859, 455033, 455201, 455381, 455557, 455737, 455921, 456091, 456241, 456409, 456587, 456769]
theorem check2 : primorialChainCheck 4473 primorial4473 184 453991 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 453991 456769 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 453991) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [456949, 457117, 457279, 457459, 457643, 457817, 457987, 458123, 458239, 458407, 458573, 458747, 458929, 459113, 459293, 459469]
theorem check3 : primorialChainCheck 4473 primorial4473 184 456769 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 456769 459469 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 456769) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [459649, 459829, 460013, 460189, 460373, 460543, 460721, 460903, 461059, 461239, 461413, 461581, 461717, 461891, 462073, 462239]
theorem check4 : primorialChainCheck 4473 primorial4473 184 459469 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 459469 462239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 459469) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [462421, 462589, 462773, 462953, 463103, 463283, 463459, 463643, 463823, 464003, 464173, 464351, 464521, 464699, 464879, 465061]
theorem check5 : primorialChainCheck 4473 primorial4473 184 462239 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 462239 465061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 462239) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [465211, 465383, 465551, 465721, 465901, 466079, 466261, 466441, 466619, 466801, 466957, 467141, 467317, 467497, 467681, 467833]
theorem check6 : primorialChainCheck 4473 primorial4473 184 465061 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 465061 467833 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 465061) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [468011, 468191, 468371, 468551, 468719, 468899, 469069, 469253, 469429, 469613, 469793, 469969, 470153, 470333, 470513, 470689]
theorem check7 : primorialChainCheck 4473 primorial4473 184 467833 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 467833 470689 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 467833) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [470867, 471041, 471217, 471391, 471571, 471749, 471931, 472111, 472289, 472469, 472643, 472817, 472993, 473173, 473353, 473533]
theorem check8 : primorialChainCheck 4473 primorial4473 184 470689 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 470689 473533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 470689) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [473659, 473839, 474017, 474197, 474379, 474557, 474737, 474917, 475093, 475273, 475457, 475639, 475823, 475997, 476167, 476351]
theorem check9 : primorialChainCheck 4473 primorial4473 184 473533 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 473533 476351 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 473533) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [476519, 476701, 476869, 477047, 477229, 477409, 477593, 477769, 477947, 478129, 478273, 478453, 478637, 478813, 478991, 479153]
theorem check10 : primorialChainCheck 4473 primorial4473 184 476351 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 476351 479153 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 476351) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [479327, 479509, 479639, 479821, 479971, 480143, 480317, 480499, 480661, 480839, 481021, 481199, 481379, 481549, 481721, 481883]
theorem check11 : primorialChainCheck 4473 primorial4473 184 479153 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 479153 481883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 479153) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [482051, 482233, 482413, 482597, 482773, 482957, 483139, 483323, 483503, 483671, 483853, 484037, 484207, 484373, 484543, 484727]
theorem check12 : primorialChainCheck 4473 primorial4473 184 481883 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 481883 484727 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 481883) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [484867, 485041, 485209, 485389, 485567, 485731, 485909, 486091, 486247, 486407, 486589, 486769, 486949, 487133, 487313, 487489]
theorem check13 : primorialChainCheck 4473 primorial4473 184 484727 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 484727 487489 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 484727) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [487657, 487831, 488011, 488171, 488353, 488513, 488689, 488861, 489043, 489217, 489389, 489571, 489743, 489913, 490097, 490277]
theorem check14 : primorialChainCheck 4473 primorial4473 184 487489 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 487489 490277 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 487489) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [490459, 490643, 490783, 490967, 491149, 491333, 491503, 491677, 491857, 492029, 492113, 492293, 492467, 492647, 492799, 492979]
theorem check15 : primorialChainCheck 4473 primorial4473 184 490277 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 490277 492979 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 490277) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [493159, 493333, 493481, 493657, 493817, 493993, 494167, 494341, 494521, 494699, 494873, 495043, 495221, 495401, 495571, 495751]
theorem check16 : primorialChainCheck 4473 primorial4473 184 492979 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 492979 495751 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 492979) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [495931, 496079, 496259, 496439, 496609, 496789, 496963, 497141, 497323, 497507, 497689, 497873, 498053, 498227, 498409, 498583]
theorem check17 : primorialChainCheck 4473 primorial4473 184 495751 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 495751 498583 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 495751) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [498767, 498947, 499129, 499309, 499493, 499673, 499853, 500029, 500209, 500393, 500567, 500741, 500923, 501103, 501287, 501463]
theorem check18 : primorialChainCheck 4473 primorial4473 184 498583 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 498583 501463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 498583) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [501637, 501821, 502001, 502181, 502339, 502517, 502699, 502883, 503053, 503233, 503413, 503593, 503777, 503959, 504143, 504323]
theorem check19 : primorialChainCheck 4473 primorial4473 184 501463 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 501463 504323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 501463) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [504479, 504661, 504821, 504991, 505159, 505339, 505523, 505693, 505877, 506047, 506213, 506393, 506573, 506743, 506911, 507079]
theorem check20 : primorialChainCheck 4473 primorial4473 184 504323 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 504323 507079 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 504323) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [507217, 507401, 507571, 507743, 507919, 508103, 508273, 508451, 508621, 508799, 508973, 509149, 509329, 509513, 509693, 509867]
theorem check21 : primorialChainCheck 4473 primorial4473 184 507079 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 507079 509867 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 507079) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [510049, 510233, 510403, 510583, 510767, 510943, 511123, 511297, 511477, 511633, 511811, 511991, 512167, 512333, 512507, 512683]
theorem check22 : primorialChainCheck 4473 primorial4473 184 509867 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 509867 512683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 509867) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [512849, 513031, 513203, 513371, 513533, 513697, 513881, 514061, 514243, 514417, 514571, 514751, 514933, 515111, 515293, 515477]
theorem check23 : primorialChainCheck 4473 primorial4473 184 512683 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 512683 515477 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 512683) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [515653, 515813, 515993, 516169, 516349, 516521, 516701, 516883, 517067, 517249, 517417, 517597, 517747, 517931, 518113, 518291]
theorem check24 : primorialChainCheck 4473 primorial4473 184 515477 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 515477 518291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 515477) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [518473, 518657, 518831, 519011, 519193, 519373, 519553, 519737, 519919, 520103, 520279, 520451, 520633, 520813, 520981, 521161]
theorem check25 : primorialChainCheck 4473 primorial4473 184 518291 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 518291 521161 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 518291) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [521329, 521503, 521671, 521831, 521999, 522167, 522337, 522521, 522703, 522887, 523049, 523219, 523403, 523577, 523759, 523937]
theorem check26 : primorialChainCheck 4473 primorial4473 184 521161 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 521161 523937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 521161) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [524119, 524287, 524453, 524633, 524803, 524983, 525167, 525313, 525493, 525677, 525839, 525983, 526159, 526307, 526483, 526667]
theorem check27 : primorialChainCheck 4473 primorial4473 184 523937 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 523937 526667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 523937) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [526837, 526997, 527179, 527353, 527533, 527701, 527881, 528053, 528223, 528403, 528559, 528719, 528883, 529051, 529229, 529411]
theorem check28 : primorialChainCheck 4473 primorial4473 184 526667 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 526667 529411 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 526667) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [529579, 529751, 529933, 530093, 530267, 530447, 530609, 530773, 530947, 531121, 531299, 531481, 531637, 531821, 532001, 532183]
theorem check29 : primorialChainCheck 4473 primorial4473 184 529411 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 529411 532183 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 529411) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [532349, 532531, 532709, 532867, 533051, 533227, 533399, 533581, 533747, 533927, 534101, 534283, 534439, 534617, 534799, 534971]
theorem check30 : primorialChainCheck 4473 primorial4473 184 532183 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 532183 534971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 532183) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [535151, 535333, 535511, 535679, 535861, 536023, 536203, 536377, 536561, 536743, 536923, 537091, 537269, 537413, 537587, 537769]
theorem check31 : primorialChainCheck 4473 primorial4473 184 534971 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 534971 537769 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 534971) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 448451 453991 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 448451)
    (mid := 451249) (hi := 453991) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 453991 459469 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 453991)
    (mid := 456769) (hi := 459469) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 459469 465061 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 459469)
    (mid := 462239) (hi := 465061) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 465061 470689 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 465061)
    (mid := 467833) (hi := 470689) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 470689 476351 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 470689)
    (mid := 473533) (hi := 476351) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 476351 481883 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 476351)
    (mid := 479153) (hi := 481883) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 481883 487489 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 481883)
    (mid := 484727) (hi := 487489) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 487489 492979 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 487489)
    (mid := 490277) (hi := 492979) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 492979 498583 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 492979)
    (mid := 495751) (hi := 498583) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 498583 504323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 498583)
    (mid := 501463) (hi := 504323) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 504323 509867 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 504323)
    (mid := 507079) (hi := 509867) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 509867 515477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 509867)
    (mid := 512683) (hi := 515477) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 515477 521161 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 515477)
    (mid := 518291) (hi := 521161) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 521161 526667 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 521161)
    (mid := 523937) (hi := 526667) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 526667 532183 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 526667)
    (mid := 529411) (hi := 532183) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 532183 537769 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 532183)
    (mid := 534971) (hi := 537769) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 448451 459469 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 448451)
    (mid := 453991) (hi := 459469) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 459469 470689 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 459469)
    (mid := 465061) (hi := 470689) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 470689 481883 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 470689)
    (mid := 476351) (hi := 481883) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 481883 492979 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 481883)
    (mid := 487489) (hi := 492979) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 492979 504323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 492979)
    (mid := 498583) (hi := 504323) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 504323 515477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 504323)
    (mid := 509867) (hi := 515477) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 515477 526667 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 515477)
    (mid := 521161) (hi := 526667) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 526667 537769 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 526667)
    (mid := 532183) (hi := 537769) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 448451 470689 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 448451)
    (mid := 459469) (hi := 470689) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 470689 492979 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 470689)
    (mid := 481883) (hi := 492979) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 492979 515477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 492979)
    (mid := 504323) (hi := 515477) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 515477 537769 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 515477)
    (mid := 526667) (hi := 537769) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 448451 492979 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 448451)
    (mid := 470689) (hi := 492979) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 492979 537769 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 492979)
    (mid := 515477) (hi := 537769) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 448451 537769 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 448451)
    (mid := 492979) (hi := 537769) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 448451 537769 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block005

#print axioms B699MiddleExtension.PrimorialBlocks.Block005.joined
