import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block039

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [3457141, 3457319, 3457481, 3457651, 3457819, 3457999, 3458179, 3458363, 3458537, 3458687, 3458869, 3459037, 3459199, 3459373, 3459541, 3459719]
theorem check0 : primorialChainCheck 4473 primorial4473 184 3456977 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 3456977 3459719 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3456977) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [3459899, 3460069, 3460243, 3460427, 3460609, 3460789, 3460973, 3461147, 3461329, 3461509, 3461687, 3461867, 3462037, 3462187, 3462353, 3462523]
theorem check1 : primorialChainCheck 4473 primorial4473 184 3459719 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 3459719 3462523 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3459719) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [3462707, 3462889, 3463069, 3463249, 3463433, 3463609, 3463783, 3463939, 3464119, 3464299, 3464473, 3464647, 3464827, 3464977, 3465151, 3465317]
theorem check2 : primorialChainCheck 4473 primorial4473 184 3462523 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 3462523 3465317 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3462523) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [3465491, 3465673, 3465857, 3466033, 3466201, 3466369, 3466549, 3466733, 3466913, 3467053, 3467221, 3467383, 3467543, 3467713, 3467869, 3468029]
theorem check3 : primorialChainCheck 4473 primorial4473 184 3465317 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 3465317 3468029 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3465317) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [3468209, 3468379, 3468557, 3468739, 3468919, 3469099, 3469247, 3469421, 3469591, 3469771, 3469943, 3470113, 3470297, 3470477, 3470653, 3470837]
theorem check4 : primorialChainCheck 4473 primorial4473 184 3468029 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 3468029 3470837 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3468029) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [3471011, 3471191, 3471371, 3471539, 3471719, 3471901, 3472067, 3472247, 3472423, 3472597, 3472771, 3472951, 3473131, 3473297, 3473443, 3473623]
theorem check5 : primorialChainCheck 4473 primorial4473 184 3470837 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 3470837 3473623 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3470837) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [3473801, 3473983, 3474167, 3474347, 3474517, 3474683, 3474859, 3475027, 3475207, 3475391, 3475559, 3475739, 3475909, 3476093, 3476257, 3476423]
theorem check6 : primorialChainCheck 4473 primorial4473 184 3473623 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 3473623 3476423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3473623) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [3476587, 3476761, 3476911, 3477091, 3477269, 3477449, 3477631, 3477811, 3477977, 3478157, 3478327, 3478493, 3478667, 3478847, 3479027, 3479209]
theorem check7 : primorialChainCheck 4473 primorial4473 184 3476423 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 3476423 3479209 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3476423) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [3479393, 3479573, 3479743, 3479921, 3480101, 3480283, 3480443, 3480623, 3480791, 3480973, 3481157, 3481339, 3481519, 3481691, 3481859, 3482041]
theorem check8 : primorialChainCheck 4473 primorial4473 184 3479209 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 3479209 3482041 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3479209) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [3482207, 3482389, 3482573, 3482741, 3482887, 3483059, 3483241, 3483413, 3483581, 3483763, 3483947, 3484123, 3484297, 3484447, 3484597, 3484759]
theorem check9 : primorialChainCheck 4473 primorial4473 184 3482041 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 3482041 3484759 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3482041) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [3484931, 3485077, 3485257, 3485441, 3485617, 3485789, 3485957, 3486127, 3486299, 3486463, 3486647, 3486829, 3486997, 3487181, 3487339, 3487489]
theorem check10 : primorialChainCheck 4473 primorial4473 184 3484759 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 3484759 3487489 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3484759) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [3487661, 3487843, 3488003, 3488171, 3488351, 3488501, 3488677, 3488851, 3489023, 3489203, 3489373, 3489533, 3489713, 3489883, 3490051, 3490229]
theorem check11 : primorialChainCheck 4473 primorial4473 184 3487489 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 3487489 3490229 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3487489) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [3490393, 3490577, 3490727, 3490891, 3491071, 3491249, 3491429, 3491599, 3491777, 3491951, 3492131, 3492301, 3492457, 3492641, 3492823, 3493003]
theorem check12 : primorialChainCheck 4473 primorial4473 184 3490229 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 3490229 3493003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3490229) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [3493183, 3493367, 3493547, 3493727, 3493909, 3494093, 3494273, 3494453, 3494627, 3494807, 3494989, 3495161, 3495301, 3495469, 3495647, 3495823]
theorem check13 : primorialChainCheck 4473 primorial4473 184 3493003 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 3493003 3495823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3493003) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [3496007, 3496177, 3496351, 3496511, 3496693, 3496877, 3497051, 3497231, 3497381, 3497521, 3497671, 3497849, 3498031, 3498211, 3498377, 3498559]
theorem check14 : primorialChainCheck 4473 primorial4473 184 3495823 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 3495823 3498559 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3495823) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [3498743, 3498919, 3499099, 3499277, 3499453, 3499619, 3499799, 3499973, 3500149, 3500327, 3500509, 3500689, 3500873, 3501041, 3501209, 3501391]
theorem check15 : primorialChainCheck 4473 primorial4473 184 3498559 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 3498559 3501391 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3498559) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [3501503, 3501679, 3501863, 3502043, 3502207, 3502363, 3502529, 3502711, 3502879, 3503063, 3503237, 3503407, 3503579, 3503761, 3503939, 3504107]
theorem check16 : primorialChainCheck 4473 primorial4473 184 3501391 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 3501391 3504107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3501391) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [3504289, 3504467, 3504647, 3504821, 3504997, 3505181, 3505363, 3505547, 3505727, 3505889, 3506047, 3506213, 3506387, 3506567, 3506719, 3506891]
theorem check17 : primorialChainCheck 4473 primorial4473 184 3504107 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 3504107 3506891 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3504107) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [3507059, 3507241, 3507421, 3507601, 3507739, 3507901, 3508079, 3508243, 3508399, 3508541, 3508721, 3508889, 3509071, 3509251, 3509419, 3509591]
theorem check18 : primorialChainCheck 4473 primorial4473 184 3506891 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 3506891 3509591 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3506891) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [3509773, 3509951, 3510121, 3510277, 3510443, 3510623, 3510803, 3510937, 3511121, 3511301, 3511477, 3511603, 3511777, 3511961, 3512143, 3512323]
theorem check19 : primorialChainCheck 4473 primorial4473 184 3509591 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 3509591 3512323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3509591) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [3512501, 3512671, 3512851, 3513023, 3513193, 3513371, 3513541, 3513721, 3513893, 3514073, 3514243, 3514417, 3514583, 3514757, 3514939, 3515101]
theorem check20 : primorialChainCheck 4473 primorial4473 184 3512323 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 3512323 3515101 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3512323) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [3515273, 3515453, 3515623, 3515807, 3515977, 3516157, 3516319, 3516437, 3516599, 3516749, 3516923, 3517097, 3517279, 3517463, 3517637, 3517799]
theorem check21 : primorialChainCheck 4473 primorial4473 184 3515101 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 3515101 3517799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3515101) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [3517967, 3518147, 3518329, 3518513, 3518693, 3518873, 3519049, 3519227, 3519379, 3519559, 3519743, 3519917, 3520093, 3520261, 3520427, 3520607]
theorem check22 : primorialChainCheck 4473 primorial4473 184 3517799 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 3517799 3520607 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3517799) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [3520789, 3520973, 3521153, 3521303, 3521473, 3521653, 3521831, 3522007, 3522191, 3522367, 3522551, 3522671, 3522823, 3522991, 3523159, 3523343]
theorem check23 : primorialChainCheck 4473 primorial4473 184 3520607 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 3520607 3523343 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3520607) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [3523519, 3523691, 3523841, 3523997, 3524161, 3524317, 3524471, 3524621, 3524789, 3524971, 3525143, 3525311, 3525491, 3525673, 3525833, 3525979]
theorem check24 : primorialChainCheck 4473 primorial4473 184 3523343 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 3523343 3525979 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3523343) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [3526163, 3526333, 3526513, 3526693, 3526867, 3527033, 3527213, 3527383, 3527549, 3527731, 3527899, 3528067, 3528251, 3528409, 3528593, 3528773]
theorem check25 : primorialChainCheck 4473 primorial4473 184 3525979 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 3525979 3528773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3525979) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [3528907, 3529087, 3529259, 3529441, 3529621, 3529789, 3529973, 3530113, 3530287, 3530467, 3530647, 3530819, 3531001, 3531181, 3531361, 3531523]
theorem check26 : primorialChainCheck 4473 primorial4473 184 3528773 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 3528773 3531523 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3528773) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [3531691, 3531841, 3532021, 3532187, 3532367, 3532541, 3532721, 3532897, 3533077, 3533239, 3533423, 3533581, 3533731, 3533903, 3534067, 3534211]
theorem check27 : primorialChainCheck 4473 primorial4473 184 3531523 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 3531523 3534211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3531523) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [3534379, 3534547, 3534731, 3534913, 3535097, 3535277, 3535459, 3535639, 3535817, 3535993, 3536177, 3536341, 3536513, 3536693, 3536851, 3537031]
theorem check28 : primorialChainCheck 4473 primorial4473 184 3534211 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 3534211 3537031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3534211) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [3537199, 3537337, 3537517, 3537701, 3537871, 3538039, 3538219, 3538399, 3538559, 3538699, 3538859, 3539027, 3539167, 3539329, 3539509, 3539693]
theorem check29 : primorialChainCheck 4473 primorial4473 184 3537031 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 3537031 3539693 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3537031) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [3539869, 3540041, 3540223, 3540401, 3540583, 3540763, 3540931, 3541091, 3541273, 3541453, 3541633, 3541817, 3541997, 3542167, 3542333, 3542507]
theorem check30 : primorialChainCheck 4473 primorial4473 184 3539693 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 3539693 3542507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3539693) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [3542677, 3542849, 3543011, 3543193, 3543373, 3543523, 3543677, 3543857, 3544031, 3544213, 3544357, 3544537, 3544703, 3544883, 3545063, 3545239]
theorem check31 : primorialChainCheck 4473 primorial4473 184 3542507 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 3542507 3545239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3542507) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 3456977 3462523 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3456977)
    (mid := 3459719) (hi := 3462523) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 3462523 3468029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3462523)
    (mid := 3465317) (hi := 3468029) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 3468029 3473623 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3468029)
    (mid := 3470837) (hi := 3473623) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 3473623 3479209 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3473623)
    (mid := 3476423) (hi := 3479209) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 3479209 3484759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3479209)
    (mid := 3482041) (hi := 3484759) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 3484759 3490229 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3484759)
    (mid := 3487489) (hi := 3490229) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 3490229 3495823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3490229)
    (mid := 3493003) (hi := 3495823) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 3495823 3501391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3495823)
    (mid := 3498559) (hi := 3501391) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 3501391 3506891 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3501391)
    (mid := 3504107) (hi := 3506891) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 3506891 3512323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3506891)
    (mid := 3509591) (hi := 3512323) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 3512323 3517799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3512323)
    (mid := 3515101) (hi := 3517799) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 3517799 3523343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3517799)
    (mid := 3520607) (hi := 3523343) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 3523343 3528773 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3523343)
    (mid := 3525979) (hi := 3528773) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 3528773 3534211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3528773)
    (mid := 3531523) (hi := 3534211) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 3534211 3539693 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3534211)
    (mid := 3537031) (hi := 3539693) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 3539693 3545239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3539693)
    (mid := 3542507) (hi := 3545239) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 3456977 3468029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3456977)
    (mid := 3462523) (hi := 3468029) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 3468029 3479209 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3468029)
    (mid := 3473623) (hi := 3479209) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 3479209 3490229 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3479209)
    (mid := 3484759) (hi := 3490229) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 3490229 3501391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3490229)
    (mid := 3495823) (hi := 3501391) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 3501391 3512323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3501391)
    (mid := 3506891) (hi := 3512323) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 3512323 3523343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3512323)
    (mid := 3517799) (hi := 3523343) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 3523343 3534211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3523343)
    (mid := 3528773) (hi := 3534211) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 3534211 3545239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3534211)
    (mid := 3539693) (hi := 3545239) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 3456977 3479209 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3456977)
    (mid := 3468029) (hi := 3479209) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 3479209 3501391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3479209)
    (mid := 3490229) (hi := 3501391) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 3501391 3523343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3501391)
    (mid := 3512323) (hi := 3523343) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 3523343 3545239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3523343)
    (mid := 3534211) (hi := 3545239) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 3456977 3501391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3456977)
    (mid := 3479209) (hi := 3501391) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 3501391 3545239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3501391)
    (mid := 3523343) (hi := 3545239) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 3456977 3545239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3456977)
    (mid := 3501391) (hi := 3545239) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 3456977 3545239 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block039

#print axioms B699MiddleExtension.PrimorialBlocks.Block039.joined
