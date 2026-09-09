import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block083

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [7326931, 7327109, 7327279, 7327451, 7327627, 7327781, 7327963, 7328131, 7328303, 7328473, 7328647, 7328831, 7329013, 7329187, 7329359, 7329503]
theorem check0 : primorialChainCheck 4473 primorial4473 184 7326749 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 7326749 7329503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7326749) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [7329677, 7329853, 7330027, 7330207, 7330391, 7330571, 7330753, 7330933, 7331111, 7331293, 7331477, 7331657, 7331839, 7332023, 7332203, 7332379]
theorem check1 : primorialChainCheck 4473 primorial4473 184 7329503 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 7329503 7332379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7329503) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [7332551, 7332733, 7332901, 7333061, 7333243, 7333427, 7333609, 7333789, 7333961, 7334137, 7334291, 7334443, 7334623, 7334783, 7334903, 7335079]
theorem check2 : primorialChainCheck 4473 primorial4473 184 7332379 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 7332379 7335079 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7332379) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [7335257, 7335439, 7335617, 7335793, 7335973, 7336127, 7336309, 7336481, 7336661, 7336829, 7337009, 7337153, 7337333, 7337509, 7337689, 7337861]
theorem check3 : primorialChainCheck 4473 primorial4473 184 7335079 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 7335079 7337861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7335079) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [7338043, 7338217, 7338391, 7338557, 7338719, 7338901, 7339081, 7339253, 7339433, 7339609, 7339793, 7339961, 7340119, 7340299, 7340483, 7340653]
theorem check4 : primorialChainCheck 4473 primorial4473 184 7337861 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 7337861 7340653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7337861) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [7340833, 7341001, 7341157, 7341293, 7341463, 7341647, 7341827, 7342007, 7342187, 7342369, 7342549, 7342729, 7342913, 7343087, 7343263, 7343429]
theorem check5 : primorialChainCheck 4473 primorial4473 184 7340653 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 7340653 7343429 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7340653) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [7343599, 7343771, 7343953, 7344121, 7344287, 7344451, 7344599, 7344767, 7344941, 7345123, 7345291, 7345469, 7345631, 7345801, 7345979, 7346161]
theorem check6 : primorialChainCheck 4473 primorial4473 184 7343429 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 7343429 7346161 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7343429) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [7346341, 7346477, 7346653, 7346837, 7346953, 7347133, 7347313, 7347491, 7347667, 7347841, 7348021, 7348181, 7348361, 7348541, 7348721, 7348897]
theorem check7 : primorialChainCheck 4473 primorial4473 184 7346161 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 7346161 7348897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7346161) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [7349071, 7349239, 7349413, 7349539, 7349711, 7349893, 7350071, 7350221, 7350401, 7350571, 7350703, 7350883, 7351033, 7351217, 7351397, 7351579]
theorem check8 : primorialChainCheck 4473 primorial4473 184 7348897 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 7348897 7351579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7348897) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [7351763, 7351943, 7352117, 7352299, 7352473, 7352651, 7352833, 7353011, 7353193, 7353377, 7353553, 7353679, 7353839, 7354021, 7354201, 7354367]
theorem check9 : primorialChainCheck 4473 primorial4473 184 7351579 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 7351579 7354367 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7351579) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [7354537, 7354681, 7354861, 7355039, 7355221, 7355363, 7355533, 7355693, 7355867, 7356049, 7356203, 7356367, 7356551, 7356731, 7356911, 7357093]
theorem check10 : primorialChainCheck 4473 primorial4473 184 7354367 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 7354367 7357093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7354367) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [7357247, 7357421, 7357589, 7357771, 7357939, 7358123, 7358293, 7358471, 7358647, 7358809, 7358987, 7359161, 7359343, 7359511, 7359673, 7359853]
theorem check11 : primorialChainCheck 4473 primorial4473 184 7357093 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 7357093 7359853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7357093) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [7360027, 7360183, 7360363, 7360531, 7360709, 7360883, 7361063, 7361239, 7361423, 7361597, 7361749, 7361929, 7362107, 7362287, 7362463, 7362643]
theorem check12 : primorialChainCheck 4473 primorial4473 184 7359853 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 7359853 7362643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7359853) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [7362827, 7363009, 7363183, 7363357, 7363513, 7363693, 7363877, 7364059, 7364233, 7364407, 7364569, 7364743, 7364923, 7365053, 7365181, 7365361]
theorem check13 : primorialChainCheck 4473 primorial4473 184 7362643 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 7362643 7365361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7362643) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [7365529, 7365713, 7365871, 7366043, 7366223, 7366399, 7366577, 7366759, 7366943, 7367029, 7367207, 7367377, 7367531, 7367669, 7367837, 7368017]
theorem check14 : primorialChainCheck 4473 primorial4473 184 7365361 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 7365361 7368017 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7365361) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [7368197, 7368379, 7368551, 7368721, 7368899, 7369081, 7369261, 7369441, 7369559, 7369711, 7369889, 7370059, 7370239, 7370417, 7370579, 7370749]
theorem check15 : primorialChainCheck 4473 primorial4473 184 7368017 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 7368017 7370749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7368017) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [7370921, 7371097, 7371277, 7371457, 7371641, 7371821, 7371989, 7372163, 7372319, 7372499, 7372667, 7372837, 7373017, 7373183, 7373357, 7373537]
theorem check16 : primorialChainCheck 4473 primorial4473 184 7370749 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 7370749 7373537 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7370749) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [7373719, 7373893, 7374077, 7374259, 7374431, 7374611, 7374779, 7374953, 7375091, 7375273, 7375447, 7375631, 7375813, 7375997, 7376167, 7376339]
theorem check17 : primorialChainCheck 4473 primorial4473 184 7373537 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 7373537 7376339 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7373537) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [7376513, 7376689, 7376867, 7376983, 7377151, 7377317, 7377497, 7377673, 7377857, 7378039, 7378219, 7378387, 7378571, 7378741, 7378919, 7379083]
theorem check18 : primorialChainCheck 4473 primorial4473 184 7376339 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 7376339 7379083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7376339) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [7379263, 7379441, 7379599, 7379759, 7379929, 7380103, 7380283, 7380467, 7380643, 7380799, 7380983, 7381163, 7381343, 7381511, 7381691, 7381849]
theorem check19 : primorialChainCheck 4473 primorial4473 184 7379083 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 7379083 7381849 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7379083) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [7382033, 7382209, 7382387, 7382567, 7382737, 7382899, 7383073, 7383241, 7383421, 7383599, 7383773, 7383923, 7384099, 7384277, 7384459, 7384627]
theorem check20 : primorialChainCheck 4473 primorial4473 184 7381849 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 7381849 7384627 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7381849) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [7384801, 7384943, 7385117, 7385299, 7385467, 7385647, 7385831, 7386011, 7386187, 7386367, 7386529, 7386713, 7386893, 7387073, 7387253, 7387417]
theorem check21 : primorialChainCheck 4473 primorial4473 184 7384627 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 7384627 7387417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7384627) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [7387573, 7387733, 7387909, 7388089, 7388237, 7388377, 7388551, 7388723, 7388893, 7389037, 7389209, 7389383, 7389541, 7389721, 7389901, 7390081]
theorem check22 : primorialChainCheck 4473 primorial4473 184 7387417 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 7387417 7390081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7387417) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [7390261, 7390423, 7390573, 7390729, 7390913, 7391093, 7391269, 7391429, 7391599, 7391777, 7391953, 7392137, 7392317, 7392457, 7392631, 7392793]
theorem check23 : primorialChainCheck 4473 primorial4473 184 7390081 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 7390081 7392793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7390081) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [7392967, 7393123, 7393297, 7393471, 7393643, 7393819, 7393957, 7394141, 7394297, 7394467, 7394627, 7394809, 7394987, 7395169, 7395341, 7395491]
theorem check24 : primorialChainCheck 4473 primorial4473 184 7392793 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 7392793 7395491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7392793) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [7395649, 7395821, 7396001, 7396171, 7396307, 7396483, 7396667, 7396847, 7397009, 7397183, 7397353, 7397527, 7397711, 7397879, 7398047, 7398229]
theorem check25 : primorialChainCheck 4473 primorial4473 184 7395491 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 7395491 7398229 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7395491) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [7398403, 7398583, 7398763, 7398931, 7399103, 7399283, 7399463, 7399643, 7399817, 7399993, 7400153, 7400317, 7400501, 7400683, 7400863, 7401047]
theorem check26 : primorialChainCheck 4473 primorial4473 184 7398229 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 7398229 7401047 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7398229) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [7401227, 7401403, 7401577, 7401731, 7401907, 7402061, 7402237, 7402403, 7402561, 7402741, 7402921, 7403101, 7403281, 7403453, 7403633, 7403813]
theorem check27 : primorialChainCheck 4473 primorial4473 184 7401047 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 7401047 7403813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7401047) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [7403987, 7404161, 7404343, 7404517, 7404659, 7404841, 7405009, 7405163, 7405303, 7405487, 7405667, 7405831, 7406011, 7406141, 7406323, 7406479]
theorem check28 : primorialChainCheck 4473 primorial4473 184 7403813 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 7403813 7406479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7403813) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [7406639, 7406821, 7406983, 7407143, 7407317, 7407497, 7407677, 7407859, 7408007, 7408189, 7408367, 7408523, 7408703, 7408883, 7409047, 7409191]
theorem check29 : primorialChainCheck 4473 primorial4473 184 7406479 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 7406479 7409191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7406479) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [7409359, 7409543, 7409669, 7409851, 7410031, 7410203, 7410383, 7410563, 7410743, 7410919, 7411087, 7411253, 7411429, 7411601, 7411771, 7411913]
theorem check30 : primorialChainCheck 4473 primorial4473 184 7409191 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 7409191 7411913 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7409191) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [7412059, 7412239, 7412399, 7412579, 7412729, 7412891, 7413073, 7413257, 7413379, 7413563, 7413737, 7413919, 7414093, 7414273, 7414439, 7414621]
theorem check31 : primorialChainCheck 4473 primorial4473 184 7411913 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 7411913 7414621 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7411913) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 7326749 7332379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7326749)
    (mid := 7329503) (hi := 7332379) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 7332379 7337861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7332379)
    (mid := 7335079) (hi := 7337861) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 7337861 7343429 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7337861)
    (mid := 7340653) (hi := 7343429) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 7343429 7348897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7343429)
    (mid := 7346161) (hi := 7348897) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 7348897 7354367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7348897)
    (mid := 7351579) (hi := 7354367) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 7354367 7359853 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7354367)
    (mid := 7357093) (hi := 7359853) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 7359853 7365361 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7359853)
    (mid := 7362643) (hi := 7365361) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 7365361 7370749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7365361)
    (mid := 7368017) (hi := 7370749) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 7370749 7376339 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7370749)
    (mid := 7373537) (hi := 7376339) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 7376339 7381849 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7376339)
    (mid := 7379083) (hi := 7381849) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 7381849 7387417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7381849)
    (mid := 7384627) (hi := 7387417) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 7387417 7392793 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7387417)
    (mid := 7390081) (hi := 7392793) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 7392793 7398229 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7392793)
    (mid := 7395491) (hi := 7398229) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 7398229 7403813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7398229)
    (mid := 7401047) (hi := 7403813) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 7403813 7409191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7403813)
    (mid := 7406479) (hi := 7409191) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 7409191 7414621 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7409191)
    (mid := 7411913) (hi := 7414621) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 7326749 7337861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7326749)
    (mid := 7332379) (hi := 7337861) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 7337861 7348897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7337861)
    (mid := 7343429) (hi := 7348897) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 7348897 7359853 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7348897)
    (mid := 7354367) (hi := 7359853) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 7359853 7370749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7359853)
    (mid := 7365361) (hi := 7370749) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 7370749 7381849 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7370749)
    (mid := 7376339) (hi := 7381849) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 7381849 7392793 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7381849)
    (mid := 7387417) (hi := 7392793) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 7392793 7403813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7392793)
    (mid := 7398229) (hi := 7403813) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 7403813 7414621 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7403813)
    (mid := 7409191) (hi := 7414621) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 7326749 7348897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7326749)
    (mid := 7337861) (hi := 7348897) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 7348897 7370749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7348897)
    (mid := 7359853) (hi := 7370749) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 7370749 7392793 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7370749)
    (mid := 7381849) (hi := 7392793) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 7392793 7414621 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7392793)
    (mid := 7403813) (hi := 7414621) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 7326749 7370749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7326749)
    (mid := 7348897) (hi := 7370749) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 7370749 7414621 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7370749)
    (mid := 7392793) (hi := 7414621) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 7326749 7414621 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7326749)
    (mid := 7370749) (hi := 7414621) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 7326749 7414621 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block083

#print axioms B699MiddleExtension.PrimorialBlocks.Block083.joined
