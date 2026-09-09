import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block009

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [805339, 805523, 805703, 805877, 806059, 806233, 806389, 806549, 806719, 806903, 807083, 807259, 807427, 807607, 807787, 807949]
theorem check0 : primorialChainCheck 4473 primorial4473 184 805159 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 805159 807949 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 805159) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [808111, 808267, 808441, 808603, 808777, 808961, 809143, 809323, 809507, 809629, 809803, 809983, 810151, 810319, 810503, 810671]
theorem check1 : primorialChainCheck 4473 primorial4473 184 807949 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 807949 810671 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 807949) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [810853, 811037, 811207, 811387, 811561, 811729, 811897, 812081, 812257, 812431, 812599, 812761, 812939, 813121, 813301, 813443]
theorem check2 : primorialChainCheck 4473 primorial4473 184 810671 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 810671 813443 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 810671) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [813623, 813797, 813971, 814139, 814309, 814493, 814643, 814823, 814991, 815173, 815351, 815533, 815713, 815897, 816077, 816251]
theorem check3 : primorialChainCheck 4473 primorial4473 184 813443 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 813443 816251 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 813443) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [816427, 816593, 816769, 816947, 817127, 817303, 817483, 817651, 817823, 817987, 818171, 818353, 818509, 818689, 818837, 819017]
theorem check4 : primorialChainCheck 4473 primorial4473 184 816251 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 816251 819017 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 816251) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [819187, 819367, 819523, 819701, 819853, 820037, 820213, 820367, 820541, 820723, 820907, 821089, 821263, 821441, 821603, 821771]
theorem check5 : primorialChainCheck 4473 primorial4473 184 819017 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 819017 821771 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 819017) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [821941, 822113, 822293, 822433, 822611, 822793, 822973, 823153, 823337, 823519, 823703, 823877, 824039, 824191, 824339, 824513]
theorem check6 : primorialChainCheck 4473 primorial4473 184 821771 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 821771 824513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 821771) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [824683, 824861, 825029, 825203, 825361, 825533, 825709, 825889, 826069, 826211, 826393, 826571, 826753, 826927, 827087, 827269]
theorem check7 : primorialChainCheck 4473 primorial4473 184 824513 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 824513 827269 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 824513) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [827447, 827599, 827779, 827941, 828119, 828277, 828449, 828601, 828757, 828941, 829123, 829289, 829469, 829643, 829819, 830003]
theorem check8 : primorialChainCheck 4473 primorial4473 184 827269 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 827269 830003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 827269) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [830177, 830359, 830513, 830693, 830873, 831043, 831221, 831373, 831553, 831731, 831913, 832081, 832253, 832427, 832607, 832787]
theorem check9 : primorialChainCheck 4473 primorial4473 184 830003 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 830003 832787 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 830003) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [832969, 833117, 833299, 833479, 833659, 833843, 834023, 834199, 834367, 834527, 834709, 834893, 835039, 835217, 835399, 835559]
theorem check10 : primorialChainCheck 4473 primorial4473 184 832787 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 832787 835559 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 832787) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [835739, 835909, 836071, 836243, 836413, 836573, 836753, 836921, 837079, 837257, 837439, 837619, 837797, 837979, 838157, 838249]
theorem check11 : primorialChainCheck 4473 primorial4473 184 835559 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 835559 838249 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 835559) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [838429, 838613, 838781, 838963, 839131, 839303, 839483, 839653, 839837, 839999, 840181, 840353, 840523, 840703, 840863, 841021]
theorem check12 : primorialChainCheck 4473 primorial4473 184 838249 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 838249 841021 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 838249) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [841193, 841369, 841549, 841727, 841889, 842071, 842249, 842423, 842599, 842771, 842951, 843131, 843307, 843487, 843649, 843833]
theorem check13 : primorialChainCheck 4473 primorial4473 184 841021 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 841021 843833 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 841021) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [844013, 844187, 844369, 844553, 844733, 844913, 845083, 845261, 845441, 845623, 845777, 845951, 846113, 846271, 846437, 846589]
theorem check14 : primorialChainCheck 4473 primorial4473 184 843833 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 843833 846589 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 843833) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [846757, 846931, 847109, 847283, 847453, 847621, 847789, 847969, 848149, 848321, 848489, 848671, 848851, 849019, 849203, 849383]
theorem check15 : primorialChainCheck 4473 primorial4473 184 846589 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 846589 849383 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 846589) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [849539, 849721, 849883, 850063, 850247, 850427, 850571, 850753, 850933, 851117, 851297, 851471, 851647, 851831, 852013, 852197]
theorem check16 : primorialChainCheck 4473 primorial4473 184 849383 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 849383 852197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 849383) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [852367, 852521, 852689, 852871, 853049, 853217, 853387, 853571, 853739, 853913, 854093, 854263, 854443, 854621, 854801, 854963]
theorem check17 : primorialChainCheck 4473 primorial4473 184 852197 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 852197 854963 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 852197) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [855143, 855317, 855499, 855683, 855863, 856043, 856213, 856393, 856571, 856733, 856909, 857083, 857267, 857431, 857581, 857749]
theorem check18 : primorialChainCheck 4473 primorial4473 184 854963 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 854963 857749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 854963) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [857929, 858113, 858293, 858467, 858631, 858787, 858961, 859121, 859297, 859477, 859657, 859841, 860011, 860143, 860323, 860507]
theorem check19 : primorialChainCheck 4473 primorial4473 184 857749 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 857749 860507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 857749) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [860689, 860861, 861043, 861221, 861391, 861571, 861743, 861907, 862067, 862249, 862423, 862607, 862789, 862973, 863153, 863323]
theorem check20 : primorialChainCheck 4473 primorial4473 184 860507 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 860507 863323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 860507) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [863497, 863671, 863851, 864029, 864211, 864379, 864551, 864733, 864917, 865091, 865261, 865409, 865591, 865771, 865937, 866119]
theorem check21 : primorialChainCheck 4473 primorial4473 184 863323 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 863323 866119 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 863323) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [866293, 866477, 866653, 866819, 867001, 867173, 867343, 867511, 867689, 867871, 868051, 868229, 868409, 868583, 868741, 868909]
theorem check22 : primorialChainCheck 4473 primorial4473 184 866119 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 866119 868909 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 866119) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [869081, 869257, 869437, 869599, 869779, 869959, 870137, 870301, 870479, 870643, 870823, 871001, 871181, 871349, 871531, 871687]
theorem check23 : primorialChainCheck 4473 primorial4473 184 868909 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 868909 871687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 868909) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [871867, 872041, 872203, 872387, 872567, 872749, 872923, 873091, 873263, 873437, 873619, 873787, 873959, 874127, 874303, 874487]
theorem check24 : primorialChainCheck 4473 primorial4473 184 871687 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 871687 874487 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 871687) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [874661, 874831, 875011, 875183, 875363, 875543, 875717, 875893, 876077, 876257, 876433, 876611, 876791, 876971, 877133, 877313]
theorem check25 : primorialChainCheck 4473 primorial4473 184 874487 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 874487 877313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 874487) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [877469, 877651, 877823, 877997, 878173, 878309, 878489, 878663, 878837, 879007, 879181, 879353, 879533, 879713, 879881, 880057]
theorem check26 : primorialChainCheck 4473 primorial4473 184 877313 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 877313 880057 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 877313) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [880223, 880367, 880543, 880727, 880909, 881077, 881249, 881417, 881597, 881779, 881963, 882139, 882313, 882491, 882659, 882823]
theorem check27 : primorialChainCheck 4473 primorial4473 184 880057 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 880057 882823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 880057) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [882979, 883163, 883343, 883517, 883699, 883877, 884057, 884231, 884371, 884537, 884717, 884899, 885083, 885263, 885427, 885611]
theorem check28 : primorialChainCheck 4473 primorial4473 184 882823 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 882823 885611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 882823) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [885793, 885977, 886129, 886313, 886493, 886667, 886819, 886999, 887177, 887333, 887503, 887681, 887849, 888011, 888179, 888361]
theorem check29 : primorialChainCheck 4473 primorial4473 184 885611 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 885611 888361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 885611) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [888541, 888721, 888887, 889069, 889247, 889429, 889597, 889769, 889951, 890129, 890303, 890467, 890609, 890789, 890969, 891151]
theorem check30 : primorialChainCheck 4473 primorial4473 184 888361 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 888361 891151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 888361) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [891329, 891509, 891679, 891859, 892027, 892189, 892357, 892531, 892709, 892877, 893059, 893237, 893419, 893603, 893777, 893939]
theorem check31 : primorialChainCheck 4473 primorial4473 184 891151 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 891151 893939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 891151) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 805159 810671 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 805159)
    (mid := 807949) (hi := 810671) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 810671 816251 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 810671)
    (mid := 813443) (hi := 816251) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 816251 821771 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 816251)
    (mid := 819017) (hi := 821771) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 821771 827269 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 821771)
    (mid := 824513) (hi := 827269) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 827269 832787 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 827269)
    (mid := 830003) (hi := 832787) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 832787 838249 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 832787)
    (mid := 835559) (hi := 838249) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 838249 843833 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 838249)
    (mid := 841021) (hi := 843833) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 843833 849383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 843833)
    (mid := 846589) (hi := 849383) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 849383 854963 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 849383)
    (mid := 852197) (hi := 854963) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 854963 860507 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 854963)
    (mid := 857749) (hi := 860507) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 860507 866119 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 860507)
    (mid := 863323) (hi := 866119) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 866119 871687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 866119)
    (mid := 868909) (hi := 871687) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 871687 877313 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 871687)
    (mid := 874487) (hi := 877313) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 877313 882823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 877313)
    (mid := 880057) (hi := 882823) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 882823 888361 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 882823)
    (mid := 885611) (hi := 888361) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 888361 893939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 888361)
    (mid := 891151) (hi := 893939) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 805159 816251 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 805159)
    (mid := 810671) (hi := 816251) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 816251 827269 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 816251)
    (mid := 821771) (hi := 827269) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 827269 838249 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 827269)
    (mid := 832787) (hi := 838249) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 838249 849383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 838249)
    (mid := 843833) (hi := 849383) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 849383 860507 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 849383)
    (mid := 854963) (hi := 860507) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 860507 871687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 860507)
    (mid := 866119) (hi := 871687) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 871687 882823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 871687)
    (mid := 877313) (hi := 882823) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 882823 893939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 882823)
    (mid := 888361) (hi := 893939) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 805159 827269 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 805159)
    (mid := 816251) (hi := 827269) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 827269 849383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 827269)
    (mid := 838249) (hi := 849383) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 849383 871687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 849383)
    (mid := 860507) (hi := 871687) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 871687 893939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 871687)
    (mid := 882823) (hi := 893939) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 805159 849383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 805159)
    (mid := 827269) (hi := 849383) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 849383 893939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 849383)
    (mid := 871687) (hi := 893939) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 805159 893939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 805159)
    (mid := 849383) (hi := 893939) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 805159 893939 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block009

#print axioms B699MiddleExtension.PrimorialBlocks.Block009.joined
