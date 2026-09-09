import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block040

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [3545411, 3545567, 3545719, 3545903, 3546061, 3546241, 3546409, 3546593, 3546757, 3546929, 3547111, 3547283, 3547459, 3547639, 3547823, 3547993]
theorem check0 : primorialChainCheck 4473 primorial4473 184 3545239 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 3545239 3547993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3545239) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [3548177, 3548339, 3548513, 3548689, 3548863, 3549047, 3549197, 3549347, 3549517, 3549701, 3549881, 3550009, 3550189, 3550373, 3550541, 3550721]
theorem check1 : primorialChainCheck 4473 primorial4473 184 3547993 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 3547993 3550721 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3547993) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [3550889, 3551057, 3551239, 3551411, 3551573, 3551753, 3551927, 3552103, 3552277, 3552433, 3552611, 3552793, 3552977, 3553141, 3553321, 3553471]
theorem check2 : primorialChainCheck 4473 primorial4473 184 3550721 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 3550721 3553471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3550721) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [3553601, 3553783, 3553967, 3554147, 3554267, 3554449, 3554611, 3554779, 3554963, 3555143, 3555311, 3555469, 3555649, 3555833, 3556001, 3556169]
theorem check3 : primorialChainCheck 4473 primorial4473 184 3553471 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 3553471 3556169 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3553471) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [3556337, 3556517, 3556691, 3556853, 3557023, 3557207, 3557381, 3557563, 3557737, 3557903, 3558067, 3558241, 3558421, 3558589, 3558761, 3558943]
theorem check4 : primorialChainCheck 4473 primorial4473 184 3556169 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 3556169 3558943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3556169) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [3559117, 3559279, 3559463, 3559627, 3559799, 3559979, 3560159, 3560339, 3560521, 3560681, 3560833, 3560993, 3561167, 3561317, 3561499, 3561673]
theorem check5 : primorialChainCheck 4473 primorial4473 184 3558943 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 3558943 3561673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3558943) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [3561853, 3562019, 3562199, 3562381, 3562561, 3562733, 3562913, 3563093, 3563249, 3563407, 3563569, 3563753, 3563929, 3564097, 3564259, 3564443]
theorem check6 : primorialChainCheck 4473 primorial4473 184 3561673 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 3561673 3564443 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3561673) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [3564623, 3564791, 3564971, 3565153, 3565337, 3565487, 3565669, 3565841, 3565979, 3566149, 3566327, 3566473, 3566599, 3566749, 3566917, 3567101]
theorem check7 : primorialChainCheck 4473 primorial4473 184 3564443 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 3564443 3567101 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3564443) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [3567283, 3567457, 3567631, 3567803, 3567983, 3568163, 3568337, 3568501, 3568679, 3568853, 3569021, 3569191, 3569369, 3569551, 3569719, 3569897]
theorem check8 : primorialChainCheck 4473 primorial4473 184 3567101 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 3567101 3569897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3567101) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [3570071, 3570227, 3570409, 3570583, 3570767, 3570943, 3571111, 3571291, 3571471, 3571651, 3571793, 3571973, 3572137, 3572321, 3572477, 3572599]
theorem check9 : primorialChainCheck 4473 primorial4473 184 3569897 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 3569897 3572599 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3569897) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [3572731, 3572903, 3573049, 3573223, 3573403, 3573529, 3573709, 3573887, 3574061, 3574231, 3574411, 3574589, 3574771, 3574943, 3575119, 3575291]
theorem check10 : primorialChainCheck 4473 primorial4473 184 3572599 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 3572599 3575291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3572599) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [3575471, 3575653, 3575821, 3575993, 3576163, 3576329, 3576509, 3576691, 3576863, 3577037, 3577181, 3577349, 3577517, 3577699, 3577877, 3578059]
theorem check11 : primorialChainCheck 4473 primorial4473 184 3575291 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 3575291 3578059 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3575291) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [3578243, 3578383, 3578567, 3578741, 3578917, 3579089, 3579271, 3579403, 3579551, 3579703, 3579871, 3580001, 3580169, 3580351, 3580519, 3580697]
theorem check12 : primorialChainCheck 4473 primorial4473 184 3578059 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 3578059 3580697 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3578059) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [3580861, 3581041, 3581219, 3581393, 3581551, 3581731, 3581911, 3582091, 3582263, 3582437, 3582617, 3582793, 3582977, 3583159, 3583313, 3583417]
theorem check13 : primorialChainCheck 4473 primorial4473 184 3580697 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 3580697 3583417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3580697) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [3583597, 3583781, 3583963, 3584143, 3584327, 3584509, 3584689, 3584873, 3585013, 3585173, 3585353, 3585497, 3585679, 3585859, 3586021, 3586199]
theorem check14 : primorialChainCheck 4473 primorial4473 184 3583417 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 3583417 3586199 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3583417) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [3586379, 3586559, 3586741, 3586909, 3587021, 3587203, 3587359, 3587531, 3587711, 3587891, 3588073, 3588251, 3588427, 3588601, 3588773, 3588947]
theorem check15 : primorialChainCheck 4473 primorial4473 184 3586199 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 3586199 3588947 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3586199) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [3589073, 3589247, 3589381, 3589549, 3589721, 3589903, 3590087, 3590263, 3590441, 3590623, 3590779, 3590963, 3591143, 3591311, 3591487, 3591671]
theorem check16 : primorialChainCheck 4473 primorial4473 184 3588947 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 3588947 3591671 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3588947) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [3591851, 3592019, 3592109, 3592291, 3592447, 3592619, 3592801, 3592973, 3593113, 3593203, 3593377, 3593549, 3593713, 3593881, 3594061, 3594223]
theorem check17 : primorialChainCheck 4473 primorial4473 184 3591671 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 3591671 3594223 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3591671) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [3594403, 3594583, 3594763, 3594931, 3595103, 3595271, 3595451, 3595633, 3595811, 3595973, 3596147, 3596323, 3596449, 3596617, 3596777, 3596959]
theorem check18 : primorialChainCheck 4473 primorial4473 184 3594223 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 3594223 3596959 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3594223) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [3597133, 3597311, 3597493, 3597677, 3597817, 3597989, 3598157, 3598337, 3598519, 3598703, 3598873, 3599047, 3599231, 3599383, 3599527, 3599663]
theorem check19 : primorialChainCheck 4473 primorial4473 184 3596959 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 3596959 3599663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3596959) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [3599839, 3600017, 3600193, 3600361, 3600539, 3600721, 3600893, 3601063, 3601243, 3601427, 3601607, 3601783, 3601967, 3602149, 3602309, 3602491]
theorem check20 : primorialChainCheck 4473 primorial4473 184 3599663 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 3599663 3602491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3599663) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [3602659, 3602831, 3603007, 3603169, 3603329, 3603491, 3603667, 3603833, 3603991, 3604163, 3604327, 3604511, 3604693, 3604871, 3605051, 3605233]
theorem check21 : primorialChainCheck 4473 primorial4473 184 3602491 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 3602491 3605233 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3602491) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [3605387, 3605561, 3605743, 3605923, 3606103, 3606287, 3606467, 3606613, 3606781, 3606961, 3607133, 3607309, 3607493, 3607649, 3607831, 3607999]
theorem check22 : primorialChainCheck 4473 primorial4473 184 3605233 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 3605233 3607999 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3605233) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [3608179, 3608357, 3608531, 3608713, 3608897, 3609071, 3609251, 3609433, 3609611, 3609787, 3609959, 3610129, 3610303, 3610469, 3610619, 3610781]
theorem check23 : primorialChainCheck 4473 primorial4473 184 3607999 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 3607999 3610781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3607999) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [3610961, 3611129, 3611303, 3611479, 3611623, 3611789, 3611947, 3612121, 3612293, 3612457, 3612613, 3612787, 3612967, 3613151, 3613331, 3613513]
theorem check24 : primorialChainCheck 4473 primorial4473 184 3610781 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 3610781 3613513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3610781) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [3613693, 3613871, 3614041, 3614209, 3614363, 3614509, 3614687, 3614867, 3615037, 3615221, 3615389, 3615571, 3615743, 3615919, 3616079, 3616259]
theorem check25 : primorialChainCheck 4473 primorial4473 184 3613513 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 3613513 3616259 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3613513) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [3616423, 3616583, 3616757, 3616939, 3617101, 3617281, 3617443, 3617623, 3617797, 3617951, 3618101, 3618283, 3618463, 3618631, 3618809, 3618991]
theorem check26 : primorialChainCheck 4473 primorial4473 184 3616259 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 3616259 3618991 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3616259) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [3619159, 3619339, 3619507, 3619687, 3619843, 3620021, 3620161, 3620329, 3620501, 3620681, 3620843, 3621011, 3621181, 3621353, 3621529, 3621713]
theorem check27 : primorialChainCheck 4473 primorial4473 184 3618991 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 3618991 3621713 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3618991) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [3621889, 3622061, 3622231, 3622393, 3622573, 3622747, 3622919, 3623099, 3623273, 3623449, 3623597, 3623773, 3623953, 3624109, 3624293, 3624473]
theorem check28 : primorialChainCheck 4473 primorial4473 184 3621713 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 3621713 3624473 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3621713) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [3624653, 3624833, 3625003, 3625177, 3625361, 3625511, 3625693, 3625873, 3626053, 3626221, 3626401, 3626569, 3626743, 3626897, 3627079, 3627263]
theorem check29 : primorialChainCheck 4473 primorial4473 184 3624473 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 3624473 3627263 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3624473) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [3627427, 3627587, 3627769, 3627947, 3628129, 3628309, 3628483, 3628663, 3628847, 3629029, 3629207, 3629389, 3629567, 3629749, 3629933, 3630101]
theorem check30 : primorialChainCheck 4473 primorial4473 184 3627263 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 3627263 3630101 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3627263) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [3630281, 3630461, 3630643, 3630827, 3631009, 3631181, 3631349, 3631519, 3631703, 3631877, 3632051, 3632201, 3632383, 3632557, 3632737, 3632903]
theorem check31 : primorialChainCheck 4473 primorial4473 184 3630101 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 3630101 3632903 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3630101) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 3545239 3550721 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3545239)
    (mid := 3547993) (hi := 3550721) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 3550721 3556169 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3550721)
    (mid := 3553471) (hi := 3556169) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 3556169 3561673 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3556169)
    (mid := 3558943) (hi := 3561673) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 3561673 3567101 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3561673)
    (mid := 3564443) (hi := 3567101) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 3567101 3572599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3567101)
    (mid := 3569897) (hi := 3572599) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 3572599 3578059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3572599)
    (mid := 3575291) (hi := 3578059) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 3578059 3583417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3578059)
    (mid := 3580697) (hi := 3583417) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 3583417 3588947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3583417)
    (mid := 3586199) (hi := 3588947) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 3588947 3594223 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3588947)
    (mid := 3591671) (hi := 3594223) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 3594223 3599663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3594223)
    (mid := 3596959) (hi := 3599663) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 3599663 3605233 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3599663)
    (mid := 3602491) (hi := 3605233) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 3605233 3610781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3605233)
    (mid := 3607999) (hi := 3610781) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 3610781 3616259 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3610781)
    (mid := 3613513) (hi := 3616259) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 3616259 3621713 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3616259)
    (mid := 3618991) (hi := 3621713) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 3621713 3627263 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3621713)
    (mid := 3624473) (hi := 3627263) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 3627263 3632903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3627263)
    (mid := 3630101) (hi := 3632903) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 3545239 3556169 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3545239)
    (mid := 3550721) (hi := 3556169) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 3556169 3567101 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3556169)
    (mid := 3561673) (hi := 3567101) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 3567101 3578059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3567101)
    (mid := 3572599) (hi := 3578059) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 3578059 3588947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3578059)
    (mid := 3583417) (hi := 3588947) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 3588947 3599663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3588947)
    (mid := 3594223) (hi := 3599663) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 3599663 3610781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3599663)
    (mid := 3605233) (hi := 3610781) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 3610781 3621713 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3610781)
    (mid := 3616259) (hi := 3621713) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 3621713 3632903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3621713)
    (mid := 3627263) (hi := 3632903) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 3545239 3567101 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3545239)
    (mid := 3556169) (hi := 3567101) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 3567101 3588947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3567101)
    (mid := 3578059) (hi := 3588947) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 3588947 3610781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3588947)
    (mid := 3599663) (hi := 3610781) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 3610781 3632903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3610781)
    (mid := 3621713) (hi := 3632903) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 3545239 3588947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3545239)
    (mid := 3567101) (hi := 3588947) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 3588947 3632903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3588947)
    (mid := 3610781) (hi := 3632903) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 3545239 3632903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3545239)
    (mid := 3588947) (hi := 3632903) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 3545239 3632903 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block040

#print axioms B699MiddleExtension.PrimorialBlocks.Block040.joined
