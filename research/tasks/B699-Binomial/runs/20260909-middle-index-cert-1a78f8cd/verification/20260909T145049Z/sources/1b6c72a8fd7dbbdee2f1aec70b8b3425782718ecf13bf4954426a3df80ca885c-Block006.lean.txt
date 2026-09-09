import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block006

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [537941, 538123, 538303, 538487, 538651, 538829, 539009, 539171, 539351, 539533, 539713, 539897, 540079, 540251, 540433, 540613]
theorem check0 : primorialChainCheck 4473 primorial4473 184 537769 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 537769 540613 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 537769) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [540781, 540961, 541141, 541309, 541483, 541661, 541837, 542021, 542197, 542371, 542551, 542723, 542891, 543061, 543241, 543407]
theorem check1 : primorialChainCheck 4473 primorial4473 184 540613 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 540613 543407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 540613) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [543553, 543713, 543889, 544031, 544199, 544373, 544549, 544727, 544903, 545087, 545267, 545449, 545621, 545791, 545959, 546137]
theorem check2 : primorialChainCheck 4473 primorial4473 184 543407 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 543407 546137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 543407) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [546317, 546479, 546661, 546841, 547021, 547171, 547321, 547501, 547681, 547853, 548003, 548153, 548323, 548503, 548687, 548869]
theorem check3 : primorialChainCheck 4473 primorial4473 184 546137 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 546137 548869 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 546137) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [549037, 549221, 549403, 549587, 549767, 549949, 550129, 550309, 550489, 550663, 550843, 551027, 551207, 551387, 551569, 551753]
theorem check4 : primorialChainCheck 4473 primorial4473 184 548869 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 548869 551753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 548869) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [551933, 552113, 552283, 552403, 552583, 552757, 552917, 553099, 553279, 553463, 553643, 553811, 553991, 554171, 554347, 554531]
theorem check5 : primorialChainCheck 4473 primorial4473 184 551753 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 551753 554531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 551753) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [554711, 554893, 555077, 555257, 555439, 555593, 555767, 555941, 556123, 556289, 556459, 556639, 556823, 556999, 557159, 557339]
theorem check6 : primorialChainCheck 4473 primorial4473 184 554531 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 554531 557339 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 554531) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [557521, 557693, 557863, 558029, 558209, 558343, 558521, 558703, 558881, 559051, 559231, 559397, 559577, 559747, 559913, 560093]
theorem check7 : primorialChainCheck 4473 primorial4473 184 557339 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 557339 560093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 557339) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [560249, 560411, 560561, 560737, 560897, 561079, 561251, 561419, 561599, 561767, 561947, 562129, 562313, 562493, 562673, 562841]
theorem check8 : primorialChainCheck 4473 primorial4473 184 560093 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 560093 562841 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 560093) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [563021, 563197, 563377, 563561, 563743, 563897, 564061, 564233, 564409, 564593, 564761, 564937, 565111, 565289, 565469, 565651]
theorem check9 : primorialChainCheck 4473 primorial4473 184 562841 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 562841 565651 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 562841) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [565813, 565997, 566179, 566347, 566521, 566701, 566879, 567059, 567209, 567389, 567569, 567751, 567899, 568069, 568241, 568391]
theorem check10 : primorialChainCheck 4473 primorial4473 184 565651 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 565651 568391 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 565651) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [568549, 568723, 568907, 569083, 569267, 569447, 569623, 569797, 569957, 570139, 570253, 570421, 570601, 570781, 570961, 571133]
theorem check11 : primorialChainCheck 4473 primorial4473 184 568391 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 568391 571133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 568391) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [571303, 571477, 571657, 571841, 572023, 572207, 572387, 572567, 572749, 572933, 573109, 573289, 573473, 573647, 573829, 574003]
theorem check12 : primorialChainCheck 4473 primorial4473 184 571133 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 571133 574003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 571133) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [574183, 574367, 574547, 574727, 574907, 575087, 575261, 575441, 575623, 575791, 575963, 576131, 576313, 576493, 576677, 576791]
theorem check13 : primorialChainCheck 4473 primorial4473 184 574003 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 574003 576791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 574003) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [576967, 577151, 577333, 577517, 577667, 577849, 578029, 578213, 578371, 578537, 578719, 578881, 579053, 579199, 579379, 579563]
theorem check14 : primorialChainCheck 4473 primorial4473 184 576791 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 576791 579563 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 576791) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [579737, 579907, 580081, 580259, 580417, 580577, 580759, 580939, 581101, 581263, 581447, 581617, 581797, 581981, 582161, 582319]
theorem check15 : primorialChainCheck 4473 primorial4473 184 579563 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 579563 582319 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 579563) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [582499, 582677, 582859, 583031, 583213, 583397, 583577, 583753, 583937, 584099, 584281, 584447, 584627, 584809, 584993, 585163]
theorem check16 : primorialChainCheck 4473 primorial4473 184 582319 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 582319 585163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 582319) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [585341, 585517, 585691, 585863, 586037, 586213, 586387, 586571, 586741, 586921, 587101, 587281, 587459, 587633, 587813, 587989]
theorem check17 : primorialChainCheck 4473 primorial4473 184 585163 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 585163 587989 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 585163) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [588173, 588347, 588529, 588703, 588881, 589063, 589243, 589409, 589591, 589763, 589933, 590099, 590279, 590437, 590609, 590771]
theorem check18 : primorialChainCheck 4473 primorial4473 184 587989 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 587989 590771 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 587989) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [590929, 591113, 591289, 591469, 591653, 591827, 591973, 592157, 592337, 592517, 592693, 592877, 593059, 593233, 593407, 593587]
theorem check19 : primorialChainCheck 4473 primorial4473 184 590771 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 590771 593587 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 590771) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [593767, 593951, 594119, 594299, 594469, 594653, 594829, 595003, 595183, 595363, 595547, 595717, 595877, 596059, 596243, 596423]
theorem check20 : primorialChainCheck 4473 primorial4473 184 593587 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 593587 596423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 593587) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [596599, 596779, 596963, 597137, 597307, 597473, 597643, 597827, 598007, 598189, 598369, 598541, 598721, 598903, 599087, 599251]
theorem check21 : primorialChainCheck 4473 primorial4473 184 596423 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 596423 599251 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 596423) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [599429, 599611, 599783, 599959, 600109, 600293, 600469, 600641, 600823, 600983, 601147, 601319, 601487, 601669, 601849, 602033]
theorem check22 : primorialChainCheck 4473 primorial4473 184 599251 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 599251 602033 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 599251) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [602201, 602383, 602551, 602729, 602909, 603091, 603257, 603431, 603613, 603793, 603949, 604073, 604249, 604433, 604613, 604787]
theorem check23 : primorialChainCheck 4473 primorial4473 184 602033 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 602033 604787 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 602033) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [604957, 605123, 605261, 605443, 605617, 605789, 605953, 606131, 606313, 606497, 606673, 606857, 607037, 607219, 607363, 607531]
theorem check24 : primorialChainCheck 4473 primorial4473 184 604787 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 604787 607531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 604787) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [607703, 607883, 608033, 608213, 608393, 608527, 608701, 608873, 609047, 609227, 609407, 609589, 609757, 609929, 610081, 610243]
theorem check25 : primorialChainCheck 4473 primorial4473 184 607531 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 607531 610243 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 607531) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [610417, 610583, 610763, 610933, 611113, 611297, 611467, 611641, 611803, 611977, 612149, 612331, 612511, 612679, 612853, 613013]
theorem check26 : primorialChainCheck 4473 primorial4473 184 610243 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 610243 613013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 610243) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [613189, 613367, 613549, 613733, 613903, 614071, 614219, 614387, 614569, 614753, 614927, 615107, 615289, 615473, 615623, 615799]
theorem check27 : primorialChainCheck 4473 primorial4473 184 613013 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 613013 615799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 613013) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [615971, 616153, 616327, 616507, 616673, 616849, 617027, 617191, 617369, 617537, 617719, 617887, 618053, 618229, 618413, 618593]
theorem check28 : primorialChainCheck 4473 primorial4473 184 615799 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 615799 618593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 615799) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [618719, 618883, 619067, 619247, 619397, 619573, 619753, 619921, 620099, 620261, 620441, 620623, 620777, 620957, 621139, 621317]
theorem check29 : primorialChainCheck 4473 primorial4473 184 618593 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 618593 621317 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 618593) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [621473, 621641, 621821, 621997, 622177, 622351, 622529, 622709, 622889, 623071, 623221, 623401, 623563, 623743, 623923, 624097]
theorem check30 : primorialChainCheck 4473 primorial4473 184 621317 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 621317 624097 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 621317) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [624277, 624451, 624607, 624791, 624973, 625133, 625307, 625489, 625663, 625837, 626011, 626191, 626363, 626539, 626723, 626887]
theorem check31 : primorialChainCheck 4473 primorial4473 184 624097 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 624097 626887 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 624097) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 537769 543407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 537769)
    (mid := 540613) (hi := 543407) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 543407 548869 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 543407)
    (mid := 546137) (hi := 548869) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 548869 554531 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 548869)
    (mid := 551753) (hi := 554531) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 554531 560093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 554531)
    (mid := 557339) (hi := 560093) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 560093 565651 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 560093)
    (mid := 562841) (hi := 565651) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 565651 571133 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 565651)
    (mid := 568391) (hi := 571133) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 571133 576791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 571133)
    (mid := 574003) (hi := 576791) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 576791 582319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 576791)
    (mid := 579563) (hi := 582319) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 582319 587989 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 582319)
    (mid := 585163) (hi := 587989) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 587989 593587 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 587989)
    (mid := 590771) (hi := 593587) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 593587 599251 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 593587)
    (mid := 596423) (hi := 599251) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 599251 604787 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 599251)
    (mid := 602033) (hi := 604787) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 604787 610243 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 604787)
    (mid := 607531) (hi := 610243) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 610243 615799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 610243)
    (mid := 613013) (hi := 615799) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 615799 621317 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 615799)
    (mid := 618593) (hi := 621317) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 621317 626887 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 621317)
    (mid := 624097) (hi := 626887) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 537769 548869 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 537769)
    (mid := 543407) (hi := 548869) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 548869 560093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 548869)
    (mid := 554531) (hi := 560093) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 560093 571133 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 560093)
    (mid := 565651) (hi := 571133) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 571133 582319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 571133)
    (mid := 576791) (hi := 582319) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 582319 593587 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 582319)
    (mid := 587989) (hi := 593587) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 593587 604787 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 593587)
    (mid := 599251) (hi := 604787) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 604787 615799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 604787)
    (mid := 610243) (hi := 615799) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 615799 626887 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 615799)
    (mid := 621317) (hi := 626887) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 537769 560093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 537769)
    (mid := 548869) (hi := 560093) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 560093 582319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 560093)
    (mid := 571133) (hi := 582319) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 582319 604787 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 582319)
    (mid := 593587) (hi := 604787) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 604787 626887 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 604787)
    (mid := 615799) (hi := 626887) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 537769 582319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 537769)
    (mid := 560093) (hi := 582319) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 582319 626887 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 582319)
    (mid := 604787) (hi := 626887) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 537769 626887 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 537769)
    (mid := 582319) (hi := 626887) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 537769 626887 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block006

#print axioms B699MiddleExtension.PrimorialBlocks.Block006.joined
