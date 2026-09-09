import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block158

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [13896997, 13897181, 13897363, 13897547, 13897717, 13897883, 13898033, 13898189, 13898369, 13898539, 13898719, 13898897, 13899079, 13899257, 13899401, 13899581]
theorem check0 : primorialChainCheck 4473 primorial4473 184 13896823 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 13896823 13899581 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13896823) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [13899757, 13899929, 13900099, 13900273, 13900433, 13900613, 13900793, 13900969, 13901137, 13901311, 13901477, 13901659, 13901837, 13902019, 13902197, 13902367]
theorem check1 : primorialChainCheck 4473 primorial4473 184 13899581 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 13899581 13902367 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13899581) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [13902541, 13902689, 13902871, 13903051, 13903217, 13903397, 13903567, 13903751, 13903889, 13904047, 13904201, 13904377, 13904557, 13904729, 13904911, 13905083]
theorem check2 : primorialChainCheck 4473 primorial4473 184 13902367 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 13902367 13905083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13902367) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [13905251, 13905433, 13905607, 13905767, 13905943, 13906121, 13906261, 13906439, 13906601, 13906777, 13906943, 13907119, 13907293, 13907473, 13907603, 13907779]
theorem check3 : primorialChainCheck 4473 primorial4473 184 13905083 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 13905083 13907779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13905083) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [13907953, 13908137, 13908319, 13908493, 13908667, 13908841, 13909019, 13909177, 13909361, 13909541, 13909717, 13909877, 13910051, 13910209, 13910389, 13910549]
theorem check4 : primorialChainCheck 4473 primorial4473 184 13907779 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 13907779 13910549 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13907779) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [13910713, 13910881, 13911047, 13911229, 13911407, 13911589, 13911773, 13911949, 13912127, 13912303, 13912471, 13912643, 13912823, 13912993, 13913161, 13913323]
theorem check5 : primorialChainCheck 4473 primorial4473 184 13910549 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 13910549 13913323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13910549) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [13913461, 13913623, 13913807, 13913989, 13914157, 13914301, 13914473, 13914647, 13914811, 13914937, 13915117, 13915301, 13915471, 13915633, 13915817, 13915981]
theorem check6 : primorialChainCheck 4473 primorial4473 184 13913323 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 13913323 13915981 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13913323) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [13916159, 13916339, 13916519, 13916677, 13916849, 13917023, 13917199, 13917359, 13917539, 13917721, 13917889, 13918067, 13918249, 13918417, 13918601, 13918777]
theorem check7 : primorialChainCheck 4473 primorial4473 184 13915981 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 13915981 13918777 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13915981) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [13918951, 13919123, 13919303, 13919471, 13919641, 13919819, 13919993, 13920163, 13920337, 13920509, 13920679, 13920859, 13921043, 13921223, 13921403, 13921571]
theorem check8 : primorialChainCheck 4473 primorial4473 184 13918777 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 13918777 13921571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13918777) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [13921727, 13921909, 13922071, 13922221, 13922401, 13922569, 13922743, 13922921, 13923101, 13923263, 13923439, 13923617, 13923779, 13923937, 13924117, 13924289]
theorem check9 : primorialChainCheck 4473 primorial4473 184 13921571 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 13921571 13924289 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13921571) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [13924459, 13924639, 13924787, 13924957, 13925129, 13925311, 13925467, 13925641, 13925819, 13925939, 13926103, 13926287, 13926463, 13926637, 13926817, 13926977]
theorem check10 : primorialChainCheck 4473 primorial4473 184 13924289 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 13924289 13926977 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13924289) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [13927129, 13927307, 13927469, 13927643, 13927819, 13928003, 13928183, 13928353, 13928533, 13928713, 13928891, 13929049, 13929229, 13929371, 13929551, 13929731]
theorem check11 : primorialChainCheck 4473 primorial4473 184 13926977 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 13926977 13929731 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13926977) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [13929913, 13930087, 13930261, 13930421, 13930603, 13930747, 13930927, 13931111, 13931287, 13931461, 13931639, 13931821, 13931999, 13932167, 13932349, 13932533]
theorem check12 : primorialChainCheck 4473 primorial4473 184 13929731 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 13929731 13932533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13929731) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [13932713, 13932889, 13933067, 13933207, 13933391, 13933529, 13933697, 13933877, 13934051, 13934227, 13934411, 13934579, 13934759, 13934933, 13935107, 13935281]
theorem check13 : primorialChainCheck 4473 primorial4473 184 13932533 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 13932533 13935281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13932533) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [13935443, 13935611, 13935793, 13935947, 13936129, 13936313, 13936493, 13936673, 13936841, 13937017, 13937179, 13937359, 13937537, 13937699, 13937851, 13938031]
theorem check14 : primorialChainCheck 4473 primorial4473 184 13935281 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 13935281 13938031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13935281) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [13938209, 13938383, 13938559, 13938739, 13938919, 13939097, 13939279, 13939463, 13939637, 13939769, 13939951, 13940117, 13940293, 13940477, 13940651, 13940831]
theorem check15 : primorialChainCheck 4473 primorial4473 184 13938031 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 13938031 13940831 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13938031) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [13941007, 13941181, 13941337, 13941511, 13941691, 13941871, 13942043, 13942223, 13942403, 13942571, 13942741, 13942919, 13943101, 13943243, 13943393, 13943533]
theorem check16 : primorialChainCheck 4473 primorial4473 184 13940831 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 13940831 13943533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13940831) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [13943659, 13943843, 13944023, 13944197, 13944379, 13944529, 13944713, 13944881, 13945037, 13945213, 13945369, 13945543, 13945727, 13945903, 13946087, 13946227]
theorem check17 : primorialChainCheck 4473 primorial4473 184 13943533 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 13943533 13946227 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13943533) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [13946411, 13946587, 13946771, 13946927, 13947103, 13947281, 13947449, 13947629, 13947809, 13947977, 13948153, 13948301, 13948433, 13948601, 13948777, 13948939]
theorem check18 : primorialChainCheck 4473 primorial4473 184 13946227 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 13946227 13948939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13946227) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [13949113, 13949281, 13949449, 13949633, 13949813, 13949989, 13950169, 13950337, 13950511, 13950683, 13950851, 13951027, 13951211, 13951381, 13951559, 13951739]
theorem check19 : primorialChainCheck 4473 primorial4473 184 13948939 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 13948939 13951739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13948939) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [13951921, 13952083, 13952231, 13952401, 13952557, 13952711, 13952893, 13953077, 13953259, 13953427, 13953607, 13953791, 13953931, 13954103, 13954279, 13954459]
theorem check20 : primorialChainCheck 4473 primorial4473 184 13951739 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 13951739 13954459 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13951739) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [13954643, 13954823, 13954999, 13955173, 13955353, 13955531, 13955713, 13955891, 13956073, 13956247, 13956421, 13956599, 13956763, 13956947, 13957117, 13957283]
theorem check21 : primorialChainCheck 4473 primorial4473 184 13954459 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 13954459 13957283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13954459) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [13957451, 13957627, 13957789, 13957949, 13958129, 13958303, 13958473, 13958653, 13958827, 13958993, 13959163, 13959343, 13959503, 13959683, 13959833, 13960007]
theorem check22 : primorialChainCheck 4473 primorial4473 184 13957283 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 13957283 13960007 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13957283) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [13960189, 13960367, 13960547, 13960721, 13960901, 13961083, 13961251, 13961417, 13961581, 13961729, 13961891, 13962073, 13962257, 13962439, 13962623, 13962779]
theorem check23 : primorialChainCheck 4473 primorial4473 184 13960007 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 13960007 13962779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13960007) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [13962959, 13963133, 13963283, 13963447, 13963601, 13963759, 13963931, 13964113, 13964267, 13964441, 13964617, 13964779, 13964963, 13965139, 13965311, 13965491]
theorem check24 : primorialChainCheck 4473 primorial4473 184 13962779 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 13962779 13965491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13962779) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [13965671, 13965827, 13965997, 13966153, 13966321, 13966483, 13966651, 13966829, 13966993, 13967153, 13967297, 13967449, 13967623, 13967801, 13967957, 13968131]
theorem check25 : primorialChainCheck 4473 primorial4473 184 13965491 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 13965491 13968131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13965491) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [13968307, 13968481, 13968653, 13968821, 13969001, 13969177, 13969343, 13969517, 13969691, 13969867, 13970041, 13970221, 13970401, 13970581, 13970713, 13970897]
theorem check26 : primorialChainCheck 4473 primorial4473 184 13968131 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 13968131 13970897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13968131) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [13971073, 13971253, 13971409, 13971583, 13971767, 13971941, 13972099, 13972279, 13972459, 13972597, 13972781, 13972951, 13973131, 13973293, 13973461, 13973593]
theorem check27 : primorialChainCheck 4473 primorial4473 184 13970897 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 13970897 13973593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13970897) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [13973767, 13973951, 13974131, 13974299, 13974469, 13974601, 13974761, 13974943, 13975111, 13975289, 13975441, 13975609, 13975769, 13975943, 13976101, 13976273]
theorem check28 : primorialChainCheck 4473 primorial4473 184 13973593 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 13973593 13976273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13973593) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [13976441, 13976623, 13976797, 13976969, 13977149, 13977329, 13977503, 13977671, 13977853, 13978033, 13978207, 13978337, 13978519, 13978691, 13978849, 13979033]
theorem check29 : primorialChainCheck 4473 primorial4473 184 13976273 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 13976273 13979033 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13976273) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [13979213, 13979393, 13979549, 13979723, 13979857, 13979983, 13980167, 13980311, 13980493, 13980677, 13980859, 13981027, 13981199, 13981381, 13981547, 13981729]
theorem check30 : primorialChainCheck 4473 primorial4473 184 13979033 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 13979033 13981729 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13979033) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [13981901, 13982063, 13982231, 13982401, 13982569, 13982753, 13982909, 13983089, 13983269, 13983443, 13983587, 13983733, 13983917, 13984063, 13984213, 13984363]
theorem check31 : primorialChainCheck 4473 primorial4473 184 13981729 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 13981729 13984363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13981729) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 13896823 13902367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13896823)
    (mid := 13899581) (hi := 13902367) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 13902367 13907779 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13902367)
    (mid := 13905083) (hi := 13907779) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 13907779 13913323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13907779)
    (mid := 13910549) (hi := 13913323) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 13913323 13918777 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13913323)
    (mid := 13915981) (hi := 13918777) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 13918777 13924289 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13918777)
    (mid := 13921571) (hi := 13924289) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 13924289 13929731 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13924289)
    (mid := 13926977) (hi := 13929731) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 13929731 13935281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13929731)
    (mid := 13932533) (hi := 13935281) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 13935281 13940831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13935281)
    (mid := 13938031) (hi := 13940831) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 13940831 13946227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13940831)
    (mid := 13943533) (hi := 13946227) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 13946227 13951739 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13946227)
    (mid := 13948939) (hi := 13951739) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 13951739 13957283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13951739)
    (mid := 13954459) (hi := 13957283) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 13957283 13962779 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13957283)
    (mid := 13960007) (hi := 13962779) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 13962779 13968131 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13962779)
    (mid := 13965491) (hi := 13968131) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 13968131 13973593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13968131)
    (mid := 13970897) (hi := 13973593) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 13973593 13979033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13973593)
    (mid := 13976273) (hi := 13979033) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 13979033 13984363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13979033)
    (mid := 13981729) (hi := 13984363) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 13896823 13907779 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13896823)
    (mid := 13902367) (hi := 13907779) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 13907779 13918777 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13907779)
    (mid := 13913323) (hi := 13918777) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 13918777 13929731 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13918777)
    (mid := 13924289) (hi := 13929731) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 13929731 13940831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13929731)
    (mid := 13935281) (hi := 13940831) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 13940831 13951739 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13940831)
    (mid := 13946227) (hi := 13951739) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 13951739 13962779 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13951739)
    (mid := 13957283) (hi := 13962779) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 13962779 13973593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13962779)
    (mid := 13968131) (hi := 13973593) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 13973593 13984363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13973593)
    (mid := 13979033) (hi := 13984363) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 13896823 13918777 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13896823)
    (mid := 13907779) (hi := 13918777) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 13918777 13940831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13918777)
    (mid := 13929731) (hi := 13940831) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 13940831 13962779 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13940831)
    (mid := 13951739) (hi := 13962779) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 13962779 13984363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13962779)
    (mid := 13973593) (hi := 13984363) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 13896823 13940831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13896823)
    (mid := 13918777) (hi := 13940831) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 13940831 13984363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13940831)
    (mid := 13962779) (hi := 13984363) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 13896823 13984363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13896823)
    (mid := 13940831) (hi := 13984363) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 13896823 13984363 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block158

#print axioms B699MiddleExtension.PrimorialBlocks.Block158.joined
