import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block034

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [3016927, 3017099, 3017281, 3017459, 3017627, 3017809, 3017983, 3018161, 3018329, 3018493, 3018667, 3018803, 3018949, 3019127, 3019283, 3019453]
theorem check0 : primorialChainCheck 4473 primorial4473 184 3016759 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 3016759 3019453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3016759) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [3019633, 3019811, 3019981, 3020161, 3020333, 3020513, 3020687, 3020869, 3021001, 3021173, 3021313, 3021497, 3021649, 3021833, 3021989, 3022171]
theorem check1 : primorialChainCheck 4473 primorial4473 184 3019453 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 3019453 3022171 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3019453) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [3022343, 3022517, 3022697, 3022871, 3023039, 3023197, 3023357, 3023519, 3023701, 3023861, 3024023, 3024193, 3024377, 3024547, 3024709, 3024881]
theorem check2 : primorialChainCheck 4473 primorial4473 184 3022171 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 3022171 3024881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3022171) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [3025049, 3025219, 3025387, 3025571, 3025747, 3025927, 3026081, 3026249, 3026431, 3026609, 3026789, 3026971, 3027133, 3027301, 3027473, 3027643]
theorem check3 : primorialChainCheck 4473 primorial4473 184 3024881 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 3024881 3027643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3024881) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [3027823, 3028007, 3028177, 3028357, 3028541, 3028721, 3028903, 3029087, 3029263, 3029447, 3029623, 3029801, 3029981, 3030163, 3030331, 3030509]
theorem check4 : primorialChainCheck 4473 primorial4473 184 3027643 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 3027643 3030509 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3027643) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [3030691, 3030869, 3031043, 3031201, 3031381, 3031537, 3031711, 3031867, 3032047, 3032213, 3032383, 3032567, 3032717, 3032879, 3033061, 3033229]
theorem check5 : primorialChainCheck 4473 primorial4473 184 3030509 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 3030509 3033229 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3030509) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [3033413, 3033587, 3033763, 3033941, 3034117, 3034301, 3034463, 3034613, 3034793, 3034973, 3035143, 3035273, 3035453, 3035587, 3035771, 3035947]
theorem check6 : primorialChainCheck 4473 primorial4473 184 3033229 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 3033229 3035947 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3033229) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [3036127, 3036301, 3036463, 3036643, 3036823, 3036983, 3037159, 3037343, 3037523, 3037703, 3037873, 3038039, 3038219, 3038389, 3038561, 3038741]
theorem check7 : primorialChainCheck 4473 primorial4473 184 3035947 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 3035947 3038741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3035947) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [3038897, 3039077, 3039193, 3039353, 3039529, 3039671, 3039851, 3040021, 3040189, 3040369, 3040553, 3040733, 3040913, 3041057, 3041231, 3041411]
theorem check8 : primorialChainCheck 4473 primorial4473 184 3038741 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 3038741 3041411 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3038741) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [3041587, 3041771, 3041953, 3042107, 3042283, 3042467, 3042629, 3042803, 3042971, 3043141, 3043321, 3043489, 3043643, 3043823, 3043993, 3044177]
theorem check9 : primorialChainCheck 4473 primorial4473 184 3041411 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 3041411 3044177 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3041411) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [3044359, 3044527, 3044711, 3044893, 3045067, 3045241, 3045421, 3045599, 3045773, 3045953, 3046133, 3046301, 3046471, 3046651, 3046831, 3046993]
theorem check10 : primorialChainCheck 4473 primorial4473 184 3044177 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 3044177 3046993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3044177) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [3047167, 3047351, 3047509, 3047689, 3047861, 3048043, 3048217, 3048359, 3048533, 3048713, 3048893, 3049073, 3049201, 3049381, 3049537, 3049699]
theorem check11 : primorialChainCheck 4473 primorial4473 184 3046993 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 3046993 3049699 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3046993) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [3049883, 3050029, 3050213, 3050389, 3050573, 3050737, 3050917, 3051101, 3051259, 3051439, 3051623, 3051779, 3051953, 3052117, 3052297, 3052471]
theorem check12 : primorialChainCheck 4473 primorial4473 184 3049699 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 3049699 3052471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3049699) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [3052649, 3052793, 3052969, 3053143, 3053317, 3053483, 3053629, 3053801, 3053971, 3054119, 3054299, 3054449, 3054629, 3054811, 3054971, 3055153]
theorem check13 : primorialChainCheck 4473 primorial4473 184 3052471 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 3052471 3055153 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3052471) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [3055331, 3055513, 3055693, 3055873, 3056057, 3056239, 3056423, 3056597, 3056759, 3056939, 3057113, 3057293, 3057469, 3057647, 3057823, 3058007]
theorem check14 : primorialChainCheck 4473 primorial4473 184 3055153 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 3055153 3058007 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3055153) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [3058171, 3058343, 3058519, 3058703, 3058883, 3059059, 3059233, 3059401, 3059569, 3059753, 3059921, 3060097, 3060259, 3060433, 3060601, 3060769]
theorem check15 : primorialChainCheck 4473 primorial4473 184 3058007 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 3058007 3060769 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3058007) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [3060947, 3061129, 3061313, 3061481, 3061661, 3061841, 3062011, 3062177, 3062359, 3062539, 3062723, 3062881, 3063059, 3063217, 3063391, 3063569]
theorem check16 : primorialChainCheck 4473 primorial4473 184 3060769 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 3060769 3063569 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3060769) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [3063733, 3063917, 3064079, 3064247, 3064429, 3064603, 3064751, 3064933, 3065081, 3065263, 3065431, 3065609, 3065789, 3065971, 3066127, 3066311]
theorem check17 : primorialChainCheck 4473 primorial4473 184 3063569 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 3063569 3066311 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3063569) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [3066493, 3066649, 3066829, 3067013, 3067153, 3067331, 3067513, 3067657, 3067829, 3067979, 3068161, 3068333, 3068509, 3068651, 3068831, 3069007]
theorem check18 : primorialChainCheck 4473 primorial4473 184 3066311 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 3066311 3069007 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3066311) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [3069181, 3069361, 3069541, 3069683, 3069863, 3070043, 3070213, 3070393, 3070567, 3070709, 3070883, 3071053, 3071231, 3071381, 3071539, 3071723]
theorem check19 : primorialChainCheck 4473 primorial4473 184 3069007 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 3069007 3071723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3069007) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [3071897, 3072067, 3072239, 3072413, 3072557, 3072709, 3072871, 3073051, 3073229, 3073393, 3073547, 3073727, 3073901, 3074081, 3074251, 3074419]
theorem check20 : primorialChainCheck 4473 primorial4473 184 3071723 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 3071723 3074419 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3071723) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [3074597, 3074779, 3074927, 3075109, 3075263, 3075439, 3075619, 3075797, 3075979, 3076163, 3076331, 3076511, 3076691, 3076867, 3077047, 3077203]
theorem check21 : primorialChainCheck 4473 primorial4473 184 3074419 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 3074419 3077203 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3074419) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [3077383, 3077539, 3077717, 3077881, 3078059, 3078227, 3078409, 3078587, 3078769, 3078953, 3079129, 3079303, 3079457, 3079627, 3079801, 3079939]
theorem check22 : primorialChainCheck 4473 primorial4473 184 3077203 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 3077203 3079939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3077203) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [3080123, 3080303, 3080479, 3080653, 3080813, 3080981, 3081161, 3081343, 3081523, 3081703, 3081877, 3082031, 3082187, 3082367, 3082543, 3082727]
theorem check23 : primorialChainCheck 4473 primorial4473 184 3079939 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 3079939 3082727 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3079939) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [3082909, 3083089, 3083237, 3083417, 3083581, 3083741, 3083891, 3084073, 3084247, 3084427, 3084611, 3084749, 3084931, 3085073, 3085237, 3085421]
theorem check24 : primorialChainCheck 4473 primorial4473 184 3082727 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 3082727 3085421 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3082727) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [3085603, 3085787, 3085969, 3086141, 3086311, 3086471, 3086653, 3086813, 3086983, 3087167, 3087349, 3087533, 3087703, 3087871, 3088039, 3088219]
theorem check25 : primorialChainCheck 4473 primorial4473 184 3085421 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 3085421 3088219 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3085421) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [3088399, 3088573, 3088753, 3088931, 3089083, 3089239, 3089407, 3089591, 3089753, 3089923, 3090097, 3090253, 3090431, 3090613, 3090781, 3090961]
theorem check26 : primorialChainCheck 4473 primorial4473 184 3088219 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 3088219 3090961 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3088219) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [3091117, 3091279, 3091463, 3091643, 3091819, 3091997, 3092171, 3092347, 3092513, 3092681, 3092857, 3093011, 3093173, 3093331, 3093511, 3093689]
theorem check27 : primorialChainCheck 4473 primorial4473 184 3090961 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 3090961 3093689 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3090961) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [3093863, 3094043, 3094181, 3094361, 3094541, 3094711, 3094877, 3094991, 3095149, 3095329, 3095507, 3095681, 3095863, 3096047, 3096229, 3096413]
theorem check28 : primorialChainCheck 4473 primorial4473 184 3093689 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 3093689 3096413 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3093689) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [3096589, 3096757, 3096917, 3097097, 3097279, 3097439, 3097547, 3097727, 3097909, 3098089, 3098243, 3098423, 3098597, 3098759, 3098941, 3099073]
theorem check29 : primorialChainCheck 4473 primorial4473 184 3096413 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 3096413 3099073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3096413) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [3099241, 3099419, 3099587, 3099757, 3099937, 3100099, 3100277, 3100421, 3100597, 3100739, 3100913, 3101069, 3101249, 3101419, 3101597, 3101779]
theorem check30 : primorialChainCheck 4473 primorial4473 184 3099073 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 3099073 3101779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3099073) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [3101957, 3102131, 3102311, 3102481, 3102661, 3102829, 3103013, 3103189, 3103343, 3103501, 3103679, 3103861, 3103981, 3104159, 3104329, 3104513]
theorem check31 : primorialChainCheck 4473 primorial4473 184 3101779 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 3101779 3104513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3101779) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 3016759 3022171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3016759)
    (mid := 3019453) (hi := 3022171) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 3022171 3027643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3022171)
    (mid := 3024881) (hi := 3027643) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 3027643 3033229 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3027643)
    (mid := 3030509) (hi := 3033229) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 3033229 3038741 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3033229)
    (mid := 3035947) (hi := 3038741) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 3038741 3044177 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3038741)
    (mid := 3041411) (hi := 3044177) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 3044177 3049699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3044177)
    (mid := 3046993) (hi := 3049699) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 3049699 3055153 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3049699)
    (mid := 3052471) (hi := 3055153) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 3055153 3060769 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3055153)
    (mid := 3058007) (hi := 3060769) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 3060769 3066311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3060769)
    (mid := 3063569) (hi := 3066311) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 3066311 3071723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3066311)
    (mid := 3069007) (hi := 3071723) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 3071723 3077203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3071723)
    (mid := 3074419) (hi := 3077203) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 3077203 3082727 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3077203)
    (mid := 3079939) (hi := 3082727) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 3082727 3088219 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3082727)
    (mid := 3085421) (hi := 3088219) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 3088219 3093689 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3088219)
    (mid := 3090961) (hi := 3093689) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 3093689 3099073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3093689)
    (mid := 3096413) (hi := 3099073) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 3099073 3104513 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3099073)
    (mid := 3101779) (hi := 3104513) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 3016759 3027643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3016759)
    (mid := 3022171) (hi := 3027643) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 3027643 3038741 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3027643)
    (mid := 3033229) (hi := 3038741) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 3038741 3049699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3038741)
    (mid := 3044177) (hi := 3049699) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 3049699 3060769 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3049699)
    (mid := 3055153) (hi := 3060769) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 3060769 3071723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3060769)
    (mid := 3066311) (hi := 3071723) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 3071723 3082727 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3071723)
    (mid := 3077203) (hi := 3082727) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 3082727 3093689 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3082727)
    (mid := 3088219) (hi := 3093689) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 3093689 3104513 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3093689)
    (mid := 3099073) (hi := 3104513) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 3016759 3038741 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3016759)
    (mid := 3027643) (hi := 3038741) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 3038741 3060769 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3038741)
    (mid := 3049699) (hi := 3060769) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 3060769 3082727 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3060769)
    (mid := 3071723) (hi := 3082727) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 3082727 3104513 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3082727)
    (mid := 3093689) (hi := 3104513) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 3016759 3060769 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3016759)
    (mid := 3038741) (hi := 3060769) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 3060769 3104513 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3060769)
    (mid := 3082727) (hi := 3104513) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 3016759 3104513 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3016759)
    (mid := 3060769) (hi := 3104513) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 3016759 3104513 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block034

#print axioms B699MiddleExtension.PrimorialBlocks.Block034.joined
