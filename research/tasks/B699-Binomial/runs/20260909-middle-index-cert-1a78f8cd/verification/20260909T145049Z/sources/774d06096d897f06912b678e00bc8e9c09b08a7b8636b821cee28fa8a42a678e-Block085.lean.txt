import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block085

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [7502051, 7502227, 7502399, 7502567, 7502723, 7502881, 7503059, 7503227, 7503407, 7503577, 7503761, 7503941, 7504117, 7504291, 7504459, 7504643]
theorem check0 : primorialChainCheck 4473 primorial4473 184 7501873 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 7501873 7504643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7501873) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [7504817, 7504993, 7505161, 7505341, 7505479, 7505657, 7505837, 7506011, 7506181, 7506341, 7506509, 7506677, 7506857, 7507037, 7507211, 7507373]
theorem check1 : primorialChainCheck 4473 primorial4473 184 7504643 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 7504643 7507373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7504643) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [7507553, 7507711, 7507891, 7508069, 7508251, 7508393, 7508573, 7508749, 7508929, 7509101, 7509269, 7509419, 7509589, 7509743, 7509919, 7510081]
theorem check2 : primorialChainCheck 4473 primorial4473 184 7507373 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 7507373 7510081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7507373) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [7510253, 7510429, 7510603, 7510733, 7510879, 7511057, 7511233, 7511381, 7511563, 7511737, 7511891, 7512047, 7512217, 7512383, 7512563, 7512737]
theorem check3 : primorialChainCheck 4473 primorial4473 184 7510081 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 7510081 7512737 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7510081) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [7512919, 7513073, 7513229, 7513411, 7513589, 7513771, 7513951, 7514113, 7514281, 7514449, 7514627, 7514807, 7514977, 7515161, 7515337, 7515499]
theorem check4 : primorialChainCheck 4473 primorial4473 184 7512737 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 7512737 7515499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7512737) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [7515661, 7515821, 7515979, 7516151, 7516321, 7516493, 7516657, 7516819, 7516991, 7517161, 7517311, 7517491, 7517669, 7517843, 7518023, 7518191]
theorem check5 : primorialChainCheck 4473 primorial4473 184 7515499 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 7515499 7518191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7515499) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [7518361, 7518529, 7518671, 7518853, 7519009, 7519189, 7519363, 7519541, 7519703, 7519871, 7520027, 7520209, 7520389, 7520573, 7520729, 7520911]
theorem check6 : primorialChainCheck 4473 primorial4473 184 7518191 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 7518191 7520911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7518191) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [7521079, 7521257, 7521439, 7521617, 7521793, 7521977, 7522159, 7522331, 7522469, 7522643, 7522813, 7522997, 7523179, 7523357, 7523539, 7523717]
theorem check7 : primorialChainCheck 4473 primorial4473 184 7520911 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 7520911 7523717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7520911) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [7523863, 7524031, 7524203, 7524383, 7524553, 7524733, 7524917, 7525081, 7525261, 7525433, 7525613, 7525783, 7525967, 7526143, 7526317, 7526501]
theorem check8 : primorialChainCheck 4473 primorial4473 184 7523717 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 7523717 7526501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7523717) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [7526683, 7526861, 7527029, 7527181, 7527347, 7527523, 7527701, 7527853, 7528033, 7528217, 7528393, 7528553, 7528733, 7528907, 7529089, 7529267]
theorem check9 : primorialChainCheck 4473 primorial4473 184 7526501 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 7526501 7529267 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7526501) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [7529443, 7529617, 7529801, 7529983, 7530161, 7530329, 7530503, 7530671, 7530851, 7531031, 7531211, 7531369, 7531541, 7531721, 7531897, 7532059]
theorem check10 : primorialChainCheck 4473 primorial4473 184 7529267 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 7529267 7532059 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7529267) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [7532221, 7532383, 7532537, 7532711, 7532839, 7533007, 7533191, 7533349, 7533521, 7533689, 7533859, 7534027, 7534193, 7534369, 7534511, 7534673]
theorem check11 : primorialChainCheck 4473 primorial4473 184 7532059 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 7532059 7534673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7532059) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [7534837, 7534997, 7535167, 7535323, 7535503, 7535683, 7535861, 7536031, 7536187, 7536371, 7536541, 7536707, 7536887, 7537067, 7537237, 7537421]
theorem check12 : primorialChainCheck 4473 primorial4473 184 7534673 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 7534673 7537421 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7534673) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [7537591, 7537763, 7537939, 7538099, 7538281, 7538449, 7538617, 7538771, 7538933, 7539089, 7539253, 7539431, 7539593, 7539773, 7539949, 7540133]
theorem check13 : primorialChainCheck 4473 primorial4473 184 7537421 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 7537421 7540133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7537421) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [7540289, 7540459, 7540601, 7540769, 7540943, 7541111, 7541293, 7541477, 7541647, 7541791, 7541957, 7542133, 7542317, 7542481, 7542653, 7542823]
theorem check14 : primorialChainCheck 4473 primorial4473 184 7540133 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 7540133 7542823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7540133) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [7543007, 7543183, 7543363, 7543531, 7543709, 7543859, 7544027, 7544203, 7544363, 7544543, 7544723, 7544899, 7545079, 7545257, 7545367, 7545547]
theorem check15 : primorialChainCheck 4473 primorial4473 184 7542823 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 7542823 7545547 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7542823) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [7545697, 7545847, 7546031, 7546207, 7546391, 7546571, 7546753, 7546901, 7547083, 7547263, 7547443, 7547587, 7547759, 7547927, 7548083, 7548257]
theorem check16 : primorialChainCheck 4473 primorial4473 184 7545547 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 7545547 7548257 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7545547) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [7548433, 7548617, 7548763, 7548941, 7549121, 7549291, 7549459, 7549637, 7549799, 7549963, 7550131, 7550311, 7550483, 7550629, 7550801, 7550981]
theorem check17 : primorialChainCheck 4473 primorial4473 184 7548257 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 7548257 7550981 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7548257) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [7551163, 7551343, 7551527, 7551707, 7551883, 7552067, 7552247, 7552417, 7552591, 7552771, 7552943, 7553123, 7553281, 7553459, 7553639, 7553807]
theorem check18 : primorialChainCheck 4473 primorial4473 184 7550981 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 7550981 7553807 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7550981) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [7553977, 7554133, 7554311, 7554493, 7554671, 7554847, 7555013, 7555189, 7555367, 7555549, 7555721, 7555903, 7556083, 7556267, 7556441, 7556611]
theorem check19 : primorialChainCheck 4473 primorial4473 184 7553807 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 7553807 7556611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7553807) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [7556767, 7556951, 7557127, 7557289, 7557463, 7557623, 7557799, 7557983, 7558157, 7558339, 7558519, 7558687, 7558871, 7559051, 7559221, 7559399]
theorem check20 : primorialChainCheck 4473 primorial4473 184 7556611 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 7556611 7559399 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7556611) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [7559569, 7559737, 7559911, 7560061, 7560239, 7560407, 7560587, 7560757, 7560929, 7561093, 7561271, 7561423, 7561573, 7561751, 7561921, 7562099]
theorem check21 : primorialChainCheck 4473 primorial4473 184 7559399 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 7559399 7562099 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7559399) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [7562279, 7562461, 7562641, 7562809, 7562987, 7563169, 7563337, 7563511, 7563679, 7563841, 7564019, 7564177, 7564357, 7564523, 7564693, 7564877]
theorem check22 : primorialChainCheck 4473 primorial4473 184 7562099 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 7562099 7564877 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7562099) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [7565053, 7565191, 7565347, 7565531, 7565711, 7565881, 7566061, 7566239, 7566421, 7566599, 7566781, 7566917, 7567099, 7567279, 7567459, 7567639]
theorem check23 : primorialChainCheck 4473 primorial4473 184 7564877 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 7564877 7567639 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7564877) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [7567823, 7567991, 7568161, 7568339, 7568503, 7568663, 7568809, 7568993, 7569173, 7569347, 7569511, 7569671, 7569851, 7570033, 7570217, 7570399]
theorem check24 : primorialChainCheck 4473 primorial4473 184 7567639 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 7567639 7570399 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7567639) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [7570583, 7570747, 7570931, 7571087, 7571269, 7571453, 7571617, 7571777, 7571957, 7572137, 7572289, 7572449, 7572613, 7572793, 7572977, 7573133]
theorem check25 : primorialChainCheck 4473 primorial4473 184 7570399 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 7570399 7573133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7570399) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [7573297, 7573481, 7573639, 7573817, 7573991, 7574173, 7574353, 7574533, 7574717, 7574893, 7575077, 7575233, 7575401, 7575577, 7575739, 7575923]
theorem check26 : primorialChainCheck 4473 primorial4473 184 7573133 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 7573133 7575923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7573133) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [7576099, 7576273, 7576433, 7576609, 7576769, 7576949, 7577123, 7577287, 7577467, 7577639, 7577809, 7577953, 7578121, 7578301, 7578479, 7578643]
theorem check27 : primorialChainCheck 4473 primorial4473 184 7575923 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 7575923 7578643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7575923) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [7578817, 7579001, 7579171, 7579349, 7579513, 7579697, 7579867, 7580051, 7580197, 7580381, 7580561, 7580743, 7580917, 7581089, 7581253, 7581407]
theorem check28 : primorialChainCheck 4473 primorial4473 184 7578643 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 7578643 7581407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7578643) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [7581533, 7581683, 7581859, 7582013, 7582123, 7582283, 7582453, 7582613, 7582787, 7582937, 7583119, 7583287, 7583467, 7583651, 7583833, 7584013]
theorem check29 : primorialChainCheck 4473 primorial4473 184 7581407 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 7581407 7584013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7581407) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [7584163, 7584337, 7584517, 7584701, 7584851, 7585021, 7585181, 7585363, 7585517, 7585687, 7585871, 7586039, 7586219, 7586401, 7586581, 7586741]
theorem check30 : primorialChainCheck 4473 primorial4473 184 7584013 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 7584013 7586741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7584013) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [7586903, 7587071, 7587247, 7587431, 7587581, 7587761, 7587941, 7588117, 7588297, 7588481, 7588627, 7588793, 7588963, 7589129, 7589279, 7589423]
theorem check31 : primorialChainCheck 4473 primorial4473 184 7586741 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 7586741 7589423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7586741) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 7501873 7507373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7501873)
    (mid := 7504643) (hi := 7507373) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 7507373 7512737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7507373)
    (mid := 7510081) (hi := 7512737) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 7512737 7518191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7512737)
    (mid := 7515499) (hi := 7518191) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 7518191 7523717 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7518191)
    (mid := 7520911) (hi := 7523717) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 7523717 7529267 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7523717)
    (mid := 7526501) (hi := 7529267) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 7529267 7534673 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7529267)
    (mid := 7532059) (hi := 7534673) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 7534673 7540133 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7534673)
    (mid := 7537421) (hi := 7540133) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 7540133 7545547 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7540133)
    (mid := 7542823) (hi := 7545547) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 7545547 7550981 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7545547)
    (mid := 7548257) (hi := 7550981) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 7550981 7556611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7550981)
    (mid := 7553807) (hi := 7556611) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 7556611 7562099 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7556611)
    (mid := 7559399) (hi := 7562099) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 7562099 7567639 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7562099)
    (mid := 7564877) (hi := 7567639) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 7567639 7573133 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7567639)
    (mid := 7570399) (hi := 7573133) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 7573133 7578643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7573133)
    (mid := 7575923) (hi := 7578643) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 7578643 7584013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7578643)
    (mid := 7581407) (hi := 7584013) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 7584013 7589423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7584013)
    (mid := 7586741) (hi := 7589423) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 7501873 7512737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7501873)
    (mid := 7507373) (hi := 7512737) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 7512737 7523717 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7512737)
    (mid := 7518191) (hi := 7523717) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 7523717 7534673 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7523717)
    (mid := 7529267) (hi := 7534673) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 7534673 7545547 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7534673)
    (mid := 7540133) (hi := 7545547) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 7545547 7556611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7545547)
    (mid := 7550981) (hi := 7556611) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 7556611 7567639 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7556611)
    (mid := 7562099) (hi := 7567639) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 7567639 7578643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7567639)
    (mid := 7573133) (hi := 7578643) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 7578643 7589423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7578643)
    (mid := 7584013) (hi := 7589423) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 7501873 7523717 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7501873)
    (mid := 7512737) (hi := 7523717) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 7523717 7545547 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7523717)
    (mid := 7534673) (hi := 7545547) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 7545547 7567639 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7545547)
    (mid := 7556611) (hi := 7567639) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 7567639 7589423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7567639)
    (mid := 7578643) (hi := 7589423) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 7501873 7545547 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7501873)
    (mid := 7523717) (hi := 7545547) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 7545547 7589423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7545547)
    (mid := 7567639) (hi := 7589423) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 7501873 7589423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7501873)
    (mid := 7545547) (hi := 7589423) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 7501873 7589423 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block085

#print axioms B699MiddleExtension.PrimorialBlocks.Block085.joined
