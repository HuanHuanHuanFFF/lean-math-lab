import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block008

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [716321, 716501, 716671, 716827, 717011, 717191, 717341, 717511, 717683, 717851, 718007, 718187, 718357, 718541, 718723, 718901]
theorem check0 : primorialChainCheck 4473 primorial4473 184 716143 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 716143 718901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 716143) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [719071, 719239, 719419, 719599, 719779, 719959, 720133, 720311, 720491, 720661, 720829, 721013, 721181, 721363, 721547, 721709]
theorem check1 : primorialChainCheck 4473 primorial4473 184 718901 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 718901 721709 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 718901) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [721891, 722069, 722243, 722417, 722599, 722783, 722963, 723133, 723293, 723473, 723623, 723803, 723977, 724153, 724331, 724513]
theorem check2 : primorialChainCheck 4473 primorial4473 184 721709 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 721709 724513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 721709) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [724651, 724813, 724993, 725161, 725341, 725519, 725687, 725867, 726043, 726221, 726391, 726559, 726707, 726853, 727021, 727201]
theorem check3 : primorialChainCheck 4473 primorial4473 184 724513 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 724513 727201 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 724513) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [727369, 727541, 727717, 727891, 728069, 728209, 728383, 728561, 728743, 728927, 729073, 729257, 729413, 729587, 729761, 729943]
theorem check4 : primorialChainCheck 4473 primorial4473 184 727201 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 727201 729943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 727201) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [730111, 730283, 730459, 730637, 730819, 730999, 731183, 731363, 731539, 731719, 731893, 732077, 732257, 732439, 732617, 732799]
theorem check5 : primorialChainCheck 4473 primorial4473 184 729943 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 729943 732799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 729943) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [732971, 733147, 733331, 733511, 733687, 733871, 734047, 734221, 734401, 734567, 734743, 734911, 735083, 735263, 735443, 735617]
theorem check6 : primorialChainCheck 4473 primorial4473 184 732799 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 732799 735617 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 732799) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [735781, 735953, 736121, 736279, 736447, 736607, 736787, 736961, 737131, 737309, 737483, 737663, 737843, 738011, 738173, 738349]
theorem check7 : primorialChainCheck 4473 primorial4473 184 735617 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 735617 738349 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 735617) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [738523, 738707, 738889, 739069, 739253, 739433, 739603, 739787, 739969, 740153, 740329, 740513, 740693, 740849, 741031, 741193]
theorem check8 : primorialChainCheck 4473 primorial4473 184 738349 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 738349 741193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 738349) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [741373, 741547, 741721, 741883, 742057, 742241, 742409, 742591, 742759, 742943, 743123, 743297, 743447, 743609, 743791, 743947]
theorem check9 : primorialChainCheck 4473 primorial4473 184 741193 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 741193 743947 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 741193) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [744127, 744301, 744451, 744607, 744791, 744959, 745141, 745307, 745477, 745649, 745817, 745999, 746183, 746363, 746533, 746677]
theorem check10 : primorialChainCheck 4473 primorial4473 184 743947 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 743947 746677 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 743947) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [746843, 746989, 747161, 747343, 747521, 747679, 747863, 748039, 748219, 748387, 748567, 748729, 748889, 749069, 749249, 749431]
theorem check11 : primorialChainCheck 4473 primorial4473 184 746677 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 746677 749431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 746677) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [749587, 749761, 749941, 750121, 750287, 750457, 750641, 750817, 751001, 751183, 751367, 751549, 751727, 751909, 752093, 752273]
theorem check12 : primorialChainCheck 4473 primorial4473 184 749431 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 749431 752273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 749431) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [752449, 752627, 752809, 752993, 753161, 753341, 753499, 753679, 753859, 754043, 754223, 754399, 754583, 754751, 754931, 755107]
theorem check13 : primorialChainCheck 4473 primorial4473 184 752273 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 752273 755107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 752273) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [755273, 755449, 755627, 755809, 755977, 756149, 756331, 756467, 756649, 756829, 756971, 757151, 757331, 757513, 757693, 757829]
theorem check14 : primorialChainCheck 4473 primorial4473 184 755107 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 755107 757829 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 755107) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [758003, 758179, 758363, 758521, 758699, 758867, 759047, 759229, 759401, 759581, 759763, 759947, 760129, 760301, 760477, 760657]
theorem check15 : primorialChainCheck 4473 primorial4473 184 757829 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 757829 760657 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 757829) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [760841, 761023, 761207, 761389, 761567, 761731, 761897, 762061, 762241, 762409, 762583, 762761, 762919, 763093, 763271, 763447]
theorem check16 : primorialChainCheck 4473 primorial4473 184 760657 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 760657 763447 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 760657) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [763627, 763811, 763967, 764149, 764327, 764501, 764683, 764857, 765041, 765211, 765389, 765539, 765707, 765889, 766067, 766247]
theorem check17 : primorialChainCheck 4473 primorial4473 184 763447 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 763447 766247 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 763447) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [766421, 766583, 766763, 766943, 767111, 767293, 767471, 767647, 767831, 768013, 768197, 768377, 768541, 768671, 768853, 769033]
theorem check18 : primorialChainCheck 4473 primorial4473 184 766247 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 766247 769033 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 766247) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [769207, 769387, 769553, 769733, 769903, 770069, 770239, 770417, 770597, 770771, 770951, 771109, 771293, 771473, 771653, 771809]
theorem check19 : primorialChainCheck 4473 primorial4473 184 769033 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 769033 771809 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 769033) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [771973, 772147, 772313, 772493, 772669, 772853, 773029, 773209, 773393, 773569, 773723, 773897, 774073, 774239, 774377, 774551]
theorem check20 : primorialChainCheck 4473 primorial4473 184 771809 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 771809 774551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 771809) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [774733, 774901, 775079, 775259, 775441, 775613, 775787, 775963, 776143, 776327, 776507, 776683, 776861, 777041, 777221, 777391]
theorem check21 : primorialChainCheck 4473 primorial4473 184 774551 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 774551 777391 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 774551) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [777571, 777743, 777919, 778097, 778247, 778417, 778597, 778777, 778951, 779131, 779267, 779413, 779593, 779771, 779939, 780119]
theorem check22 : primorialChainCheck 4473 primorial4473 184 777391 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 777391 780119 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 777391) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [780287, 780469, 780649, 780833, 781007, 781171, 781351, 781531, 781681, 781861, 782011, 782191, 782371, 782539, 782723, 782891]
theorem check23 : primorialChainCheck 4473 primorial4473 184 780119 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 780119 782891 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 780119) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [783043, 783227, 783407, 783571, 783749, 783931, 784109, 784283, 784463, 784627, 784799, 784981, 785159, 785341, 785503, 785671]
theorem check24 : primorialChainCheck 4473 primorial4473 184 782891 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 782891 785671 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 782891) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [785839, 786017, 786197, 786371, 786553, 786719, 786901, 787079, 787261, 787439, 787621, 787793, 787973, 788153, 788321, 788497]
theorem check25 : primorialChainCheck 4473 primorial4473 184 785671 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 785671 788497 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 785671) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [788677, 788849, 789031, 789181, 789343, 789527, 789709, 789883, 790063, 790241, 790421, 790589, 790753, 790927, 791111, 791291]
theorem check26 : primorialChainCheck 4473 primorial4473 184 788497 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 788497 791291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 788497) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [791473, 791657, 791827, 791993, 792163, 792317, 792487, 792667, 792821, 792991, 793159, 793343, 793519, 793699, 793867, 794041]
theorem check27 : primorialChainCheck 4473 primorial4473 184 791291 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 791291 794041 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 791291) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [794221, 794399, 794579, 794749, 794923, 795103, 795253, 795427, 795601, 795763, 795947, 796121, 796303, 796487, 796657, 796819]
theorem check28 : primorialChainCheck 4473 primorial4473 184 794041 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 794041 796819 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 794041) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [797003, 797171, 797353, 797509, 797689, 797869, 798043, 798227, 798409, 798569, 798751, 798929, 799103, 799259, 799441, 799621]
theorem check29 : primorialChainCheck 4473 primorial4473 184 796819 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 796819 799621 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 796819) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [799801, 799979, 800161, 800333, 800509, 800693, 800873, 801037, 801217, 801379, 801557, 801733, 801883, 802037, 802189, 802357]
theorem check30 : primorialChainCheck 4473 primorial4473 184 799621 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 799621 802357 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 799621) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [802531, 802709, 802873, 803057, 803237, 803417, 803591, 803749, 803927, 804107, 804283, 804449, 804619, 804803, 804983, 805159]
theorem check31 : primorialChainCheck 4473 primorial4473 184 802357 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 802357 805159 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 802357) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 716143 721709 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 716143)
    (mid := 718901) (hi := 721709) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 721709 727201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 721709)
    (mid := 724513) (hi := 727201) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 727201 732799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 727201)
    (mid := 729943) (hi := 732799) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 732799 738349 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 732799)
    (mid := 735617) (hi := 738349) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 738349 743947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 738349)
    (mid := 741193) (hi := 743947) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 743947 749431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 743947)
    (mid := 746677) (hi := 749431) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 749431 755107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 749431)
    (mid := 752273) (hi := 755107) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 755107 760657 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 755107)
    (mid := 757829) (hi := 760657) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 760657 766247 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 760657)
    (mid := 763447) (hi := 766247) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 766247 771809 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 766247)
    (mid := 769033) (hi := 771809) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 771809 777391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 771809)
    (mid := 774551) (hi := 777391) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 777391 782891 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 777391)
    (mid := 780119) (hi := 782891) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 782891 788497 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 782891)
    (mid := 785671) (hi := 788497) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 788497 794041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 788497)
    (mid := 791291) (hi := 794041) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 794041 799621 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 794041)
    (mid := 796819) (hi := 799621) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 799621 805159 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 799621)
    (mid := 802357) (hi := 805159) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 716143 727201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 716143)
    (mid := 721709) (hi := 727201) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 727201 738349 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 727201)
    (mid := 732799) (hi := 738349) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 738349 749431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 738349)
    (mid := 743947) (hi := 749431) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 749431 760657 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 749431)
    (mid := 755107) (hi := 760657) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 760657 771809 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 760657)
    (mid := 766247) (hi := 771809) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 771809 782891 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 771809)
    (mid := 777391) (hi := 782891) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 782891 794041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 782891)
    (mid := 788497) (hi := 794041) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 794041 805159 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 794041)
    (mid := 799621) (hi := 805159) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 716143 738349 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 716143)
    (mid := 727201) (hi := 738349) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 738349 760657 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 738349)
    (mid := 749431) (hi := 760657) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 760657 782891 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 760657)
    (mid := 771809) (hi := 782891) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 782891 805159 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 782891)
    (mid := 794041) (hi := 805159) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 716143 760657 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 716143)
    (mid := 738349) (hi := 760657) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 760657 805159 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 760657)
    (mid := 782891) (hi := 805159) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 716143 805159 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 716143)
    (mid := 760657) (hi := 805159) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 716143 805159 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block008

#print axioms B699MiddleExtension.PrimorialBlocks.Block008.joined
