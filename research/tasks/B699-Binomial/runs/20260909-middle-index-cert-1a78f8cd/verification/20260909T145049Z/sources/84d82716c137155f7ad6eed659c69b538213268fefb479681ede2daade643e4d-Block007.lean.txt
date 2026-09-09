import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block007

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [627071, 627251, 627433, 627617, 627799, 627973, 628139, 628319, 628499, 628681, 628861, 629029, 629203, 629383, 629567, 629747]
theorem check0 : primorialChainCheck 4473 primorial4473 184 626887 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 626887 629747 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 626887) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [629929, 630107, 630281, 630451, 630613, 630797, 630967, 631151, 631307, 631487, 631667, 631847, 632029, 632209, 632393, 632561]
theorem check1 : primorialChainCheck 4473 primorial4473 184 629747 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 629747 632561 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 629747) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [632743, 632923, 633091, 633271, 633449, 633629, 633803, 633967, 634141, 634313, 634493, 634651, 634817, 634979, 635149, 635333]
theorem check2 : primorialChainCheck 4473 primorial4473 184 632561 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 632561 635333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 632561) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [635507, 635689, 635867, 636043, 636217, 636359, 636541, 636721, 636877, 637003, 637171, 637349, 637531, 637711, 637883, 638063]
theorem check3 : primorialChainCheck 4473 primorial4473 184 635333 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 635333 638063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 635333) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [638233, 638371, 638527, 638699, 638861, 639043, 639211, 639391, 639571, 639739, 639911, 640069, 640249, 640421, 640589, 640771]
theorem check4 : primorialChainCheck 4473 primorial4473 184 638063 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 638063 640771 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 638063) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [640949, 641131, 641299, 641479, 641639, 641821, 641981, 642163, 642281, 642457, 642623, 642799, 642977, 643129, 643303, 643469]
theorem check5 : primorialChainCheck 4473 primorial4473 184 640771 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 640771 643469 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 640771) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [643651, 643781, 643961, 644143, 644327, 644507, 644687, 644869, 645049, 645233, 645409, 645583, 645763, 645941, 646103, 646273]
theorem check6 : primorialChainCheck 4473 primorial4473 184 643469 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 643469 646273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 643469) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [646453, 646637, 646781, 646957, 647131, 647303, 647477, 647659, 647839, 648019, 648199, 648383, 648563, 648731, 648911, 649093]
theorem check7 : primorialChainCheck 4473 primorial4473 184 646273 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 646273 649093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 646273) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [649277, 649457, 649639, 649813, 649991, 650107, 650291, 650449, 650627, 650779, 650953, 651127, 651293, 651473, 651649, 651821]
theorem check8 : primorialChainCheck 4473 primorial4473 184 649093 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 649093 651821 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 649093) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [651997, 652153, 652331, 652507, 652667, 652849, 653033, 653209, 653363, 653539, 653713, 653893, 654067, 654233, 654413, 654593]
theorem check9 : primorialChainCheck 4473 primorial4473 184 651821 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 651821 654593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 651821) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [654767, 654943, 655121, 655301, 655471, 655651, 655807, 655987, 656171, 656347, 656527, 656707, 656891, 657071, 657233, 657413]
theorem check10 : primorialChainCheck 4473 primorial4473 184 654593 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 654593 657413 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 654593) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [657589, 657743, 657911, 658079, 658261, 658433, 658613, 658783, 658963, 659137, 659317, 659501, 659671, 659849, 660029, 660199]
theorem check11 : primorialChainCheck 4473 primorial4473 184 657413 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 657413 660199 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 657413) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [660379, 660563, 660733, 660917, 661099, 661267, 661439, 661621, 661777, 661961, 662143, 662327, 662491, 662671, 662843, 663007]
theorem check12 : primorialChainCheck 4473 primorial4473 184 660199 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 660199 663007 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 660199) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [663191, 663371, 663547, 663713, 663893, 664067, 664243, 664427, 664603, 664777, 664949, 665131, 665311, 665479, 665659, 665843]
theorem check13 : primorialChainCheck 4473 primorial4473 184 663007 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 663007 665843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 663007) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [666023, 666203, 666353, 666529, 666707, 666889, 667021, 667181, 667363, 667547, 667727, 667903, 668069, 668243, 668417, 668599]
theorem check14 : primorialChainCheck 4473 primorial4473 184 665843 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 665843 668599 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 665843) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [668761, 668939, 669121, 669301, 669481, 669661, 669839, 670001, 670177, 670349, 670517, 670693, 670877, 671059, 671233, 671417]
theorem check15 : primorialChainCheck 4473 primorial4473 184 668599 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 668599 671417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 668599) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [671591, 671753, 671933, 672107, 672289, 672473, 672653, 672827, 672983, 673157, 673339, 673513, 673669, 673837, 674017, 674189]
theorem check16 : primorialChainCheck 4473 primorial4473 184 671417 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 671417 674189 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 671417) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [674371, 674551, 674731, 674903, 675083, 675263, 675419, 675601, 675781, 675959, 676129, 676297, 676469, 676649, 676829, 677011]
theorem check17 : primorialChainCheck 4473 primorial4473 184 674189 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 674189 677011 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 674189) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [677177, 677357, 677539, 677717, 677891, 678061, 678229, 678413, 678593, 678773, 678949, 679127, 679309, 679487, 679669, 679843]
theorem check18 : primorialChainCheck 4473 primorial4473 184 677011 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 677011 679843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 677011) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [680027, 680209, 680387, 680569, 680749, 680929, 681113, 681293, 681451, 681631, 681809, 681983, 682153, 682337, 682519, 682699]
theorem check19 : primorialChainCheck 4473 primorial4473 184 679843 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 679843 682699 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 679843) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [682819, 683003, 683159, 683341, 683513, 683693, 683873, 684053, 684221, 684379, 684559, 684731, 684889, 685073, 685249, 685429]
theorem check20 : primorialChainCheck 4473 primorial4473 184 682699 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 682699 685429 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 682699) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [685613, 685793, 685973, 686149, 686333, 686513, 686687, 686863, 687041, 687223, 687403, 687581, 687749, 687931, 688111, 688277]
theorem check21 : primorialChainCheck 4473 primorial4473 184 685429 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 685429 688277 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 685429) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [688453, 688637, 688813, 688979, 689141, 689321, 689467, 689641, 689807, 689987, 690163, 690341, 690511, 690689, 690871, 691051]
theorem check22 : primorialChainCheck 4473 primorial4473 184 688277 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 688277 691051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 688277) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [691231, 691409, 691591, 691763, 691931, 692099, 692281, 692459, 692641, 692821, 692983, 693167, 693337, 693503, 693683, 693859]
theorem check23 : primorialChainCheck 4473 primorial4473 184 691051 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 691051 693859 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 691051) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [694039, 694223, 694391, 694571, 694747, 694919, 695099, 695281, 695447, 695627, 695809, 695939, 696119, 696281, 696457, 696629]
theorem check24 : primorialChainCheck 4473 primorial4473 184 693859 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 693859 696629 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 693859) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [696811, 696991, 697157, 697327, 697511, 697693, 697877, 698053, 698183, 698359, 698543, 698723, 698903, 699077, 699253, 699437]
theorem check25 : primorialChainCheck 4473 primorial4473 184 696629 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 696629 699437 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 696629) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [699617, 699793, 699967, 700129, 700307, 700471, 700643, 700811, 700993, 701177, 701359, 701531, 701711, 701881, 702017, 702199]
theorem check26 : primorialChainCheck 4473 primorial4473 184 699437 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 699437 702199 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 699437) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [702379, 702557, 702733, 702913, 703081, 703249, 703411, 703561, 703733, 703907, 704087, 704269, 704453, 704617, 704801, 704983]
theorem check27 : primorialChainCheck 4473 primorial4473 184 702199 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 702199 704983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 702199) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [705167, 705317, 705499, 705643, 705827, 706009, 706193, 706373, 706547, 706729, 706913, 707071, 707249, 707431, 707573, 707753]
theorem check28 : primorialChainCheck 4473 primorial4473 184 704983 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 704983 707753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 704983) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [707933, 708109, 708293, 708473, 708647, 708823, 708997, 709157, 709337, 709519, 709703, 709879, 710053, 710221, 710399, 710573]
theorem check29 : primorialChainCheck 4473 primorial4473 184 707753 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 707753 710573 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 707753) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [710713, 710887, 711049, 711223, 711397, 711577, 711757, 711937, 712121, 712303, 712483, 712651, 712819, 712981, 713159, 713329]
theorem check30 : primorialChainCheck 4473 primorial4473 184 710573 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 710573 713329 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 710573) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [713509, 713681, 713863, 714037, 714199, 714377, 714557, 714739, 714919, 715087, 715259, 715441, 715621, 715801, 715973, 716143]
theorem check31 : primorialChainCheck 4473 primorial4473 184 713329 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 713329 716143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 713329) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 626887 632561 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 626887)
    (mid := 629747) (hi := 632561) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 632561 638063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 632561)
    (mid := 635333) (hi := 638063) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 638063 643469 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 638063)
    (mid := 640771) (hi := 643469) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 643469 649093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 643469)
    (mid := 646273) (hi := 649093) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 649093 654593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 649093)
    (mid := 651821) (hi := 654593) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 654593 660199 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 654593)
    (mid := 657413) (hi := 660199) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 660199 665843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 660199)
    (mid := 663007) (hi := 665843) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 665843 671417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 665843)
    (mid := 668599) (hi := 671417) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 671417 677011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 671417)
    (mid := 674189) (hi := 677011) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 677011 682699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 677011)
    (mid := 679843) (hi := 682699) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 682699 688277 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 682699)
    (mid := 685429) (hi := 688277) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 688277 693859 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 688277)
    (mid := 691051) (hi := 693859) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 693859 699437 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 693859)
    (mid := 696629) (hi := 699437) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 699437 704983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 699437)
    (mid := 702199) (hi := 704983) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 704983 710573 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 704983)
    (mid := 707753) (hi := 710573) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 710573 716143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 710573)
    (mid := 713329) (hi := 716143) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 626887 638063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 626887)
    (mid := 632561) (hi := 638063) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 638063 649093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 638063)
    (mid := 643469) (hi := 649093) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 649093 660199 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 649093)
    (mid := 654593) (hi := 660199) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 660199 671417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 660199)
    (mid := 665843) (hi := 671417) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 671417 682699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 671417)
    (mid := 677011) (hi := 682699) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 682699 693859 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 682699)
    (mid := 688277) (hi := 693859) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 693859 704983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 693859)
    (mid := 699437) (hi := 704983) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 704983 716143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 704983)
    (mid := 710573) (hi := 716143) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 626887 649093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 626887)
    (mid := 638063) (hi := 649093) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 649093 671417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 649093)
    (mid := 660199) (hi := 671417) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 671417 693859 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 671417)
    (mid := 682699) (hi := 693859) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 693859 716143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 693859)
    (mid := 704983) (hi := 716143) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 626887 671417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 626887)
    (mid := 649093) (hi := 671417) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 671417 716143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 671417)
    (mid := 693859) (hi := 716143) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 626887 716143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 626887)
    (mid := 671417) (hi := 716143) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 626887 716143 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block007

#print axioms B699MiddleExtension.PrimorialBlocks.Block007.joined
