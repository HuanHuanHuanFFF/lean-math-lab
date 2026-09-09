import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block010

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [894119, 894301, 894451, 894613, 894793, 894973, 895157, 895333, 895507, 895691, 895861, 896009, 896191, 896369, 896549, 896723]
theorem check0 : primorialChainCheck 4473 primorial4473 184 893939 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 893939 896723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 893939) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [896897, 897077, 897251, 897433, 897607, 897781, 897947, 898129, 898307, 898483, 898663, 898823, 898987, 899161, 899321, 899491]
theorem check1 : primorialChainCheck 4473 primorial4473 184 896723 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 896723 899491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 896723) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [899671, 899851, 900019, 900187, 900349, 900511, 900689, 900869, 901013, 901193, 901367, 901547, 901717, 901891, 902053, 902227]
theorem check2 : primorialChainCheck 4473 primorial4473 184 899491 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 899491 902227 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 899491) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [902401, 902579, 902761, 902933, 903109, 903269, 903451, 903613, 903781, 903949, 904121, 904303, 904483, 904667, 904847, 905011]
theorem check3 : primorialChainCheck 4473 primorial4473 184 902227 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 902227 905011 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 902227) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [905189, 905347, 905507, 905687, 905843, 906023, 906203, 906383, 906557, 906727, 906911, 907073, 907237, 907399, 907583, 907759]
theorem check4 : primorialChainCheck 4473 primorial4473 184 905011 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 905011 907759 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 905011) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [907927, 908101, 908249, 908419, 908603, 908771, 908953, 909133, 909317, 909481, 909637, 909809, 909977, 910141, 910307, 910471]
theorem check5 : primorialChainCheck 4473 primorial4473 184 907759 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 907759 910471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 907759) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [910643, 910817, 910981, 911161, 911341, 911507, 911689, 911873, 912053, 912227, 912409, 912581, 912763, 912941, 913103, 913279]
theorem check6 : primorialChainCheck 4473 primorial4473 184 910471 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 910471 913279 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 910471) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [913457, 913639, 913811, 913981, 914161, 914339, 914521, 914701, 914873, 915053, 915223, 915391, 915557, 915737, 915919, 916103]
theorem check7 : primorialChainCheck 4473 primorial4473 184 913279 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 913279 916103 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 913279) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [916273, 916457, 916633, 916787, 916961, 917141, 917317, 917471, 917641, 917809, 917993, 918173, 918353, 918529, 918683, 918857]
theorem check8 : primorialChainCheck 4473 primorial4473 184 916103 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 916103 918857 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 916103) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [919033, 919189, 919351, 919531, 919703, 919883, 920053, 920233, 920411, 920561, 920743, 920921, 921091, 921259, 921409, 921589]
theorem check9 : primorialChainCheck 4473 primorial4473 184 918857 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 918857 921589 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 918857) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [921761, 921931, 922099, 922283, 922463, 922643, 922813, 922993, 923177, 923347, 923513, 923693, 923869, 924043, 924197, 924361]
theorem check10 : primorialChainCheck 4473 primorial4473 184 921589 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 921589 924361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 921589) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [924529, 924713, 924881, 925063, 925241, 925423, 925607, 925789, 925961, 926131, 926309, 926489, 926671, 926851, 927013, 927191]
theorem check11 : primorialChainCheck 4473 primorial4473 184 924361 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 924361 927191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 924361) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [927373, 927557, 927727, 927869, 928051, 928231, 928409, 928561, 928703, 928883, 929063, 929239, 929419, 929587, 929749, 929897]
theorem check12 : primorialChainCheck 4473 primorial4473 184 927191 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 927191 929897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 927191) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [930079, 930229, 930409, 930593, 930773, 930931, 931097, 931267, 931421, 931597, 931781, 931949, 932131, 932303, 932483, 932663]
theorem check13 : primorialChainCheck 4473 primorial4473 184 929897 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 929897 932663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 929897) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [932839, 933019, 933199, 933349, 933523, 933707, 933883, 934067, 934243, 934403, 934579, 934763, 934943, 935113, 935261, 935443]
theorem check14 : primorialChainCheck 4473 primorial4473 184 932663 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 932663 935443 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 932663) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [935621, 935791, 935971, 936151, 936329, 936511, 936679, 936827, 937009, 937187, 937351, 937511, 937693, 937877, 938059, 938243]
theorem check15 : primorialChainCheck 4473 primorial4473 184 935443 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 935443 938243 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 935443) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [938393, 938573, 938747, 938921, 939091, 939247, 939431, 939613, 939793, 939973, 940157, 940327, 940501, 940669, 940853, 941027]
theorem check16 : primorialChainCheck 4473 primorial4473 184 938243 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 938243 941027 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 938243) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [941209, 941383, 941561, 941741, 941911, 942091, 942269, 942449, 942607, 942787, 942943, 943127, 943307, 943477, 943651, 943819]
theorem check17 : primorialChainCheck 4473 primorial4473 184 941027 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 941027 943819 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 941027) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [944003, 944179, 944329, 944497, 944677, 944857, 945037, 945211, 945391, 945547, 945731, 945907, 946091, 946273, 946453, 946607]
theorem check18 : primorialChainCheck 4473 primorial4473 184 943819 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 943819 946607 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 943819) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [946783, 946961, 947137, 947299, 947483, 947659, 947833, 948007, 948187, 948349, 948533, 948713, 948887, 949051, 949213, 949391]
theorem check19 : primorialChainCheck 4473 primorial4473 184 946607 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 946607 949391 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 946607) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [949567, 949733, 949903, 950083, 950251, 950423, 950569, 950753, 950933, 951109, 951283, 951449, 951623, 951803, 951967, 952151]
theorem check20 : primorialChainCheck 4473 primorial4473 184 949391 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 949391 952151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 949391) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [952313, 952487, 952669, 952843, 953023, 953191, 953347, 953521, 953699, 953881, 954043, 954221, 954391, 954571, 954743, 954923]
theorem check21 : primorialChainCheck 4473 primorial4473 184 952151 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 952151 954923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 952151) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [955103, 955277, 955457, 955613, 955793, 955967, 956147, 956311, 956477, 956633, 956801, 956953, 957133, 957317, 957499, 957659]
theorem check22 : primorialChainCheck 4473 primorial4473 184 954923 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 954923 957659 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 954923) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [957823, 958007, 958183, 958367, 958549, 958729, 958901, 959083, 959267, 959449, 959627, 959809, 959969, 960151, 960331, 960499]
theorem check23 : primorialChainCheck 4473 primorial4473 184 957659 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 957659 960499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 957659) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [960677, 960833, 961003, 961187, 961339, 961511, 961691, 961871, 962051, 962233, 962417, 962587, 962747, 962921, 963103, 963283]
theorem check24 : primorialChainCheck 4473 primorial4473 184 960499 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 960499 963283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 960499) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [963461, 963643, 963817, 963979, 964153, 964333, 964517, 964697, 964879, 965059, 965233, 965411, 965567, 965749, 965927, 966109]
theorem check25 : primorialChainCheck 4473 primorial4473 184 963283 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 963283 966109 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 963283) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [966293, 966463, 966631, 966803, 966971, 967139, 967321, 967501, 967667, 967847, 968027, 968197, 968381, 968557, 968731, 968911]
theorem check26 : primorialChainCheck 4473 primorial4473 184 966109 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 966109 968911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 966109) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [969083, 969259, 969443, 969599, 969767, 969929, 970111, 970279, 970457, 970633, 970817, 970999, 971177, 971357, 971521, 971699]
theorem check27 : primorialChainCheck 4473 primorial4473 184 968911 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 968911 971699 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 968911) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [971863, 972047, 972229, 972409, 972581, 972721, 972901, 973081, 973253, 973421, 973597, 973781, 973957, 974137, 974317, 974497]
theorem check28 : primorialChainCheck 4473 primorial4473 184 971699 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 971699 974497 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 971699) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [974657, 974837, 975017, 975199, 975383, 975553, 975731, 975907, 976091, 976271, 976453, 976637, 976817, 976991, 977167, 977351]
theorem check29 : primorialChainCheck 4473 primorial4473 184 974497 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 974497 977351 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 974497) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [977521, 977693, 977861, 978041, 978223, 978403, 978569, 978749, 978931, 979109, 979291, 979471, 979651, 979831, 979987, 980159]
theorem check30 : primorialChainCheck 4473 primorial4473 184 977351 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 977351 980159 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 977351) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [980327, 980503, 980687, 980851, 981023, 981199, 981377, 981527, 981707, 981889, 982067, 982231, 982403, 982577, 982759, 982939]
theorem check31 : primorialChainCheck 4473 primorial4473 184 980159 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 980159 982939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 980159) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 893939 899491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 893939)
    (mid := 896723) (hi := 899491) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 899491 905011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 899491)
    (mid := 902227) (hi := 905011) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 905011 910471 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 905011)
    (mid := 907759) (hi := 910471) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 910471 916103 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 910471)
    (mid := 913279) (hi := 916103) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 916103 921589 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 916103)
    (mid := 918857) (hi := 921589) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 921589 927191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 921589)
    (mid := 924361) (hi := 927191) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 927191 932663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 927191)
    (mid := 929897) (hi := 932663) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 932663 938243 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 932663)
    (mid := 935443) (hi := 938243) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 938243 943819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 938243)
    (mid := 941027) (hi := 943819) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 943819 949391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 943819)
    (mid := 946607) (hi := 949391) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 949391 954923 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 949391)
    (mid := 952151) (hi := 954923) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 954923 960499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 954923)
    (mid := 957659) (hi := 960499) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 960499 966109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 960499)
    (mid := 963283) (hi := 966109) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 966109 971699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 966109)
    (mid := 968911) (hi := 971699) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 971699 977351 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 971699)
    (mid := 974497) (hi := 977351) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 977351 982939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 977351)
    (mid := 980159) (hi := 982939) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 893939 905011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 893939)
    (mid := 899491) (hi := 905011) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 905011 916103 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 905011)
    (mid := 910471) (hi := 916103) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 916103 927191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 916103)
    (mid := 921589) (hi := 927191) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 927191 938243 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 927191)
    (mid := 932663) (hi := 938243) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 938243 949391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 938243)
    (mid := 943819) (hi := 949391) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 949391 960499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 949391)
    (mid := 954923) (hi := 960499) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 960499 971699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 960499)
    (mid := 966109) (hi := 971699) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 971699 982939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 971699)
    (mid := 977351) (hi := 982939) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 893939 916103 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 893939)
    (mid := 905011) (hi := 916103) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 916103 938243 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 916103)
    (mid := 927191) (hi := 938243) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 938243 960499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 938243)
    (mid := 949391) (hi := 960499) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 960499 982939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 960499)
    (mid := 971699) (hi := 982939) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 893939 938243 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 893939)
    (mid := 916103) (hi := 938243) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 938243 982939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 938243)
    (mid := 960499) (hi := 982939) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 893939 982939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 893939)
    (mid := 938243) (hi := 982939) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 893939 982939 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block010

#print axioms B699MiddleExtension.PrimorialBlocks.Block010.joined
