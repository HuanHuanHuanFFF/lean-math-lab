import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block090

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [7941547, 7941721, 7941883, 7942063, 7942243, 7942427, 7942609, 7942769, 7942919, 7943093, 7943263, 7943443, 7943599, 7943783, 7943951, 7944133]
theorem check0 : primorialChainCheck 4473 primorial4473 184 7941391 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 7941391 7944133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7941391) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [7944317, 7944487, 7944667, 7944851, 7945033, 7945213, 7945387, 7945559, 7945733, 7945909, 7946093, 7946233, 7946417, 7946581, 7946747, 7946929]
theorem check1 : primorialChainCheck 4473 primorial4473 184 7944133 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 7944133 7946929 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7944133) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [7947097, 7947271, 7947431, 7947613, 7947767, 7947941, 7948103, 7948279, 7948453, 7948637, 7948817, 7948999, 7949171, 7949327, 7949507, 7949681]
theorem check2 : primorialChainCheck 4473 primorial4473 184 7946929 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 7946929 7949681 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7946929) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [7949861, 7950001, 7950179, 7950361, 7950541, 7950707, 7950889, 7951067, 7951247, 7951403, 7951577, 7951753, 7951913, 7952083, 7952267, 7952443]
theorem check3 : primorialChainCheck 4473 primorial4473 184 7949681 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 7949681 7952443 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7949681) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [7952627, 7952803, 7952969, 7953133, 7953313, 7953497, 7953679, 7953863, 7954031, 7954213, 7954393, 7954571, 7954721, 7954867, 7955047, 7955209]
theorem check4 : primorialChainCheck 4473 primorial4473 184 7952443 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 7952443 7955209 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7952443) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [7955393, 7955573, 7955741, 7955923, 7956103, 7956287, 7956467, 7956631, 7956803, 7956983, 7957151, 7957319, 7957501, 7957681, 7957847, 7958029]
theorem check5 : primorialChainCheck 4473 primorial4473 184 7955209 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 7955209 7958029 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7955209) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [7958213, 7958371, 7958527, 7958693, 7958869, 7959037, 7959221, 7959401, 7959583, 7959761, 7959937, 7960081, 7960261, 7960429, 7960609, 7960793]
theorem check6 : primorialChainCheck 4473 primorial4473 184 7958029 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 7958029 7960793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7958029) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [7960969, 7961147, 7961299, 7961479, 7961651, 7961827, 7961999, 7962167, 7962313, 7962497, 7962677, 7962859, 7963031, 7963199, 7963379, 7963561]
theorem check7 : primorialChainCheck 4473 primorial4473 184 7960793 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 7960793 7963561 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7960793) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [7963723, 7963873, 7964053, 7964237, 7964413, 7964569, 7964753, 7964921, 7965091, 7965271, 7965421, 7965599, 7965781, 7965949, 7966117, 7966279]
theorem check8 : primorialChainCheck 4473 primorial4473 184 7963561 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 7963561 7966279 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7963561) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [7966463, 7966633, 7966817, 7966979, 7967143, 7967317, 7967497, 7967681, 7967851, 7968031, 7968203, 7968379, 7968551, 7968703, 7968871, 7969051]
theorem check9 : primorialChainCheck 4473 primorial4473 184 7966279 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 7966279 7969051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7966279) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [7969231, 7969399, 7969571, 7969747, 7969901, 7970071, 7970227, 7970377, 7970561, 7970731, 7970887, 7971031, 7971209, 7971389, 7971563, 7971739]
theorem check10 : primorialChainCheck 4473 primorial4473 184 7969051 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 7969051 7971739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7969051) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [7971919, 7972103, 7972277, 7972453, 7972633, 7972817, 7972969, 7973149, 7973327, 7973509, 7973689, 7973837, 7974017, 7974199, 7974371, 7974511]
theorem check11 : primorialChainCheck 4473 primorial4473 184 7971739 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 7971739 7974511 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7971739) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [7974677, 7974833, 7975013, 7975189, 7975369, 7975543, 7975717, 7975889, 7976063, 7976233, 7976413, 7976593, 7976767, 7976939, 7977119, 7977293]
theorem check12 : primorialChainCheck 4473 primorial4473 184 7974511 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 7974511 7977293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7974511) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [7977457, 7977617, 7977799, 7977971, 7978099, 7978279, 7978463, 7978639, 7978819, 7978981, 7979141, 7979287, 7979453, 7979623, 7979779, 7979957]
theorem check13 : primorialChainCheck 4473 primorial4473 184 7977293 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 7977293 7979957 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7977293) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [7980121, 7980289, 7980473, 7980629, 7980811, 7980983, 7981151, 7981333, 7981513, 7981661, 7981837, 7982021, 7982203, 7982329, 7982509, 7982693]
theorem check14 : primorialChainCheck 4473 primorial4473 184 7979957 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 7979957 7982693 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7979957) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [7982867, 7983049, 7983229, 7983383, 7983551, 7983733, 7983901, 7984037, 7984201, 7984357, 7984531, 7984687, 7984829, 7985009, 7985171, 7985323]
theorem check15 : primorialChainCheck 4473 primorial4473 184 7982693 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 7982693 7985323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7982693) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [7985503, 7985683, 7985851, 7986029, 7986211, 7986389, 7986557, 7986739, 7986917, 7987099, 7987253, 7987423, 7987607, 7987781, 7987957, 7988131]
theorem check16 : primorialChainCheck 4473 primorial4473 184 7985323 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 7985323 7988131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7985323) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [7988293, 7988473, 7988641, 7988821, 7988993, 7989173, 7989343, 7989523, 7989679, 7989857, 7990001, 7990183, 7990363, 7990519, 7990673, 7990847]
theorem check17 : primorialChainCheck 4473 primorial4473 184 7988131 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 7988131 7990847 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7988131) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [7991017, 7991177, 7991341, 7991483, 7991657, 7991839, 7992011, 7992181, 7992349, 7992527, 7992701, 7992871, 7993021, 7993201, 7993367, 7993549]
theorem check18 : primorialChainCheck 4473 primorial4473 184 7990847 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 7990847 7993549 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7990847) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [7993721, 7993897, 7994081, 7994263, 7994447, 7994617, 7994761, 7994941, 7995109, 7995277, 7995461, 7995643, 7995821, 7995991, 7996133, 7996309]
theorem check19 : primorialChainCheck 4473 primorial4473 184 7993549 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 7993549 7996309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7993549) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [7996487, 7996669, 7996843, 7996997, 7997167, 7997351, 7997519, 7997683, 7997867, 7998049, 7998223, 7998383, 7998553, 7998719, 7998863, 7998979]
theorem check20 : primorialChainCheck 4473 primorial4473 184 7996309 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 7996309 7998979 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7996309) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [7999151, 7999319, 7999501, 7999681, 7999847, 8000023, 8000189, 8000359, 8000543, 8000719, 8000899, 8001047, 8001229, 8001359, 8001541, 8001667]
theorem check21 : primorialChainCheck 4473 primorial4473 184 7998979 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 7998979 8001667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7998979) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [8001841, 8002013, 8002193, 8002349, 8002517, 8002697, 8002847, 8003029, 8003201, 8003381, 8003561, 8003741, 8003909, 8004091, 8004259, 8004443]
theorem check22 : primorialChainCheck 4473 primorial4473 184 8001667 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 8001667 8004443 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8001667) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [8004613, 8004797, 8004979, 8005141, 8005301, 8005483, 8005667, 8005841, 8006017, 8006179, 8006363, 8006513, 8006683, 8006863, 8007047, 8007229]
theorem check23 : primorialChainCheck 4473 primorial4473 184 8004443 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 8004443 8007229 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8004443) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [8007413, 8007581, 8007743, 8007917, 8008093, 8008267, 8008409, 8008589, 8008771, 8008951, 8009123, 8009303, 8009467, 8009629, 8009789, 8009959]
theorem check24 : primorialChainCheck 4473 primorial4473 184 8007229 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 8007229 8009959 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8007229) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [8010143, 8010323, 8010503, 8010661, 8010841, 8011021, 8011187, 8011363, 8011529, 8011697, 8011849, 8012029, 8012209, 8012383, 8012561, 8012723]
theorem check25 : primorialChainCheck 4473 primorial4473 184 8009959 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 8009959 8012723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8009959) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [8012897, 8013043, 8013157, 8013329, 8013487, 8013659, 8013809, 8013989, 8014141, 8014301, 8014481, 8014663, 8014847, 8015023, 8015179, 8015363]
theorem check26 : primorialChainCheck 4473 primorial4473 184 8012723 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 8012723 8015363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8012723) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [8015543, 8015723, 8015867, 8016049, 8016221, 8016403, 8016587, 8016769, 8016937, 8017117, 8017301, 8017483, 8017661, 8017843, 8018027, 8018207]
theorem check27 : primorialChainCheck 4473 primorial4473 184 8015363 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 8015363 8018207 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8015363) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [8018383, 8018567, 8018719, 8018891, 8019073, 8019251, 8019413, 8019587, 8019769, 8019953, 8020121, 8020303, 8020457, 8020631, 8020801, 8020981]
theorem check28 : primorialChainCheck 4473 primorial4473 184 8018207 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 8018207 8020981 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8018207) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [8021159, 8021339, 8021471, 8021647, 8021831, 8021999, 8022173, 8022353, 8022527, 8022709, 8022877, 8023039, 8023217, 8023387, 8023559, 8023739]
theorem check29 : primorialChainCheck 4473 primorial4473 184 8020981 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 8020981 8023739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8020981) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [8023901, 8024077, 8024249, 8024431, 8024603, 8024777, 8024959, 8025119, 8025301, 8025473, 8025653, 8025803, 8025973, 8026157, 8026327, 8026511]
theorem check30 : primorialChainCheck 4473 primorial4473 184 8023739 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 8023739 8026511 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8023739) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [8026673, 8026849, 8027029, 8027209, 8027381, 8027563, 8027699, 8027869, 8028043, 8028227, 8028407, 8028577, 8028749, 8028931, 8029097, 8029271]
theorem check31 : primorialChainCheck 4473 primorial4473 184 8026511 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 8026511 8029271 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8026511) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 7941391 7946929 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7941391)
    (mid := 7944133) (hi := 7946929) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 7946929 7952443 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7946929)
    (mid := 7949681) (hi := 7952443) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 7952443 7958029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7952443)
    (mid := 7955209) (hi := 7958029) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 7958029 7963561 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7958029)
    (mid := 7960793) (hi := 7963561) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 7963561 7969051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7963561)
    (mid := 7966279) (hi := 7969051) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 7969051 7974511 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7969051)
    (mid := 7971739) (hi := 7974511) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 7974511 7979957 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7974511)
    (mid := 7977293) (hi := 7979957) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 7979957 7985323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7979957)
    (mid := 7982693) (hi := 7985323) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 7985323 7990847 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7985323)
    (mid := 7988131) (hi := 7990847) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 7990847 7996309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7990847)
    (mid := 7993549) (hi := 7996309) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 7996309 8001667 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7996309)
    (mid := 7998979) (hi := 8001667) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 8001667 8007229 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8001667)
    (mid := 8004443) (hi := 8007229) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 8007229 8012723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8007229)
    (mid := 8009959) (hi := 8012723) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 8012723 8018207 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8012723)
    (mid := 8015363) (hi := 8018207) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 8018207 8023739 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8018207)
    (mid := 8020981) (hi := 8023739) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 8023739 8029271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8023739)
    (mid := 8026511) (hi := 8029271) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 7941391 7952443 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7941391)
    (mid := 7946929) (hi := 7952443) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 7952443 7963561 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7952443)
    (mid := 7958029) (hi := 7963561) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 7963561 7974511 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7963561)
    (mid := 7969051) (hi := 7974511) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 7974511 7985323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7974511)
    (mid := 7979957) (hi := 7985323) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 7985323 7996309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7985323)
    (mid := 7990847) (hi := 7996309) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 7996309 8007229 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7996309)
    (mid := 8001667) (hi := 8007229) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 8007229 8018207 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8007229)
    (mid := 8012723) (hi := 8018207) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 8018207 8029271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8018207)
    (mid := 8023739) (hi := 8029271) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 7941391 7963561 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7941391)
    (mid := 7952443) (hi := 7963561) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 7963561 7985323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7963561)
    (mid := 7974511) (hi := 7985323) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 7985323 8007229 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7985323)
    (mid := 7996309) (hi := 8007229) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 8007229 8029271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8007229)
    (mid := 8018207) (hi := 8029271) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 7941391 7985323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7941391)
    (mid := 7963561) (hi := 7985323) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 7985323 8029271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7985323)
    (mid := 8007229) (hi := 8029271) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 7941391 8029271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7941391)
    (mid := 7985323) (hi := 8029271) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 7941391 8029271 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block090

#print axioms B699MiddleExtension.PrimorialBlocks.Block090.joined
