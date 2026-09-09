import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block035

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [3104683, 3104851, 3105007, 3105181, 3105343, 3105527, 3105703, 3105887, 3106069, 3106237, 3106421, 3106601, 3106783, 3106921, 3107101, 3107249]
theorem check0 : primorialChainCheck 4473 primorial4473 184 3104513 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 3104513 3107249 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3104513) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [3107417, 3107597, 3107749, 3107933, 3108109, 3108293, 3108461, 3108613, 3108797, 3108967, 3109121, 3109297, 3109471, 3109651, 3109829, 3110011]
theorem check1 : primorialChainCheck 4473 primorial4473 184 3107249 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 3107249 3110011 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3107249) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [3110179, 3110353, 3110537, 3110717, 3110879, 3111037, 3111217, 3111397, 3111569, 3111743, 3111863, 3112007, 3112147, 3112331, 3112507, 3112687]
theorem check2 : primorialChainCheck 4473 primorial4473 184 3110011 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 3110011 3112687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3110011) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [3112859, 3113039, 3113221, 3113401, 3113573, 3113723, 3113899, 3114047, 3114211, 3114389, 3114563, 3114743, 3114899, 3115061, 3115241, 3115423]
theorem check3 : primorialChainCheck 4473 primorial4473 184 3112687 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 3112687 3115423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3112687) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [3115597, 3115781, 3115933, 3116111, 3116273, 3116447, 3116623, 3116807, 3116977, 3117151, 3117299, 3117481, 3117661, 3117833, 3118013, 3118183]
theorem check4 : primorialChainCheck 4473 primorial4473 184 3115423 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 3115423 3118183 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3115423) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [3118343, 3118523, 3118699, 3118883, 3119023, 3119201, 3119383, 3119563, 3119737, 3119903, 3120083, 3120253, 3120437, 3120619, 3120791, 3120973]
theorem check5 : primorialChainCheck 4473 primorial4473 184 3118183 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 3118183 3120973 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3118183) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [3121121, 3121303, 3121487, 3121667, 3121841, 3122017, 3122201, 3122381, 3122563, 3122737, 3122893, 3123073, 3123233, 3123413, 3123587, 3123751]
theorem check6 : primorialChainCheck 4473 primorial4473 184 3120973 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 3120973 3123751 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3120973) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [3123931, 3124103, 3124279, 3124441, 3124609, 3124747, 3124903, 3125051, 3125219, 3125387, 3125561, 3125737, 3125921, 3126103, 3126269, 3126451]
theorem check7 : primorialChainCheck 4473 primorial4473 184 3123751 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 3123751 3126451 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3123751) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [3126559, 3126743, 3126901, 3127081, 3127259, 3127441, 3127613, 3127783, 3127937, 3128107, 3128291, 3128453, 3128633, 3128813, 3128987, 3129169]
theorem check8 : primorialChainCheck 4473 primorial4473 184 3126451 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 3126451 3129169 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3126451) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [3129323, 3129487, 3129641, 3129821, 3129991, 3130147, 3130331, 3130513, 3130693, 3130871, 3131053, 3131237, 3131419, 3131603, 3131771, 3131951]
theorem check9 : primorialChainCheck 4473 primorial4473 184 3129169 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 3129169 3131951 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3129169) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [3132121, 3132299, 3132469, 3132653, 3132823, 3132979, 3133153, 3133337, 3133513, 3133673, 3133853, 3134029, 3134213, 3134389, 3134561, 3134723]
theorem check10 : primorialChainCheck 4473 primorial4473 184 3131951 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 3131951 3134723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3131951) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [3134903, 3135079, 3135227, 3135409, 3135593, 3135773, 3135953, 3136129, 3136307, 3136477, 3136657, 3136841, 3137003, 3137179, 3137357, 3137531]
theorem check11 : primorialChainCheck 4473 primorial4473 184 3134723 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 3134723 3137531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3134723) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [3137699, 3137881, 3138041, 3138221, 3138403, 3138581, 3138691, 3138869, 3139049, 3139231, 3139403, 3139583, 3139757, 3139919, 3140099, 3140273]
theorem check12 : primorialChainCheck 4473 primorial4473 184 3137531 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 3137531 3140273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3137531) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [3140447, 3140623, 3140807, 3140981, 3141163, 3141343, 3141503, 3141673, 3141833, 3141959, 3142123, 3142303, 3142487, 3142661, 3142837, 3143003]
theorem check13 : primorialChainCheck 4473 primorial4473 184 3140273 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 3140273 3143003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3140273) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [3143167, 3143323, 3143477, 3143641, 3143813, 3143993, 3144173, 3144343, 3144527, 3144707, 3144887, 3145057, 3145223, 3145399, 3145577, 3145741]
theorem check14 : primorialChainCheck 4473 primorial4473 184 3143003 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 3143003 3145741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3143003) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [3145913, 3146089, 3146263, 3146431, 3146599, 3146771, 3146953, 3147121, 3147269, 3147451, 3147629, 3147797, 3147973, 3148157, 3148339, 3148517]
theorem check15 : primorialChainCheck 4473 primorial4473 184 3145741 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 3145741 3148517 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3145741) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [3148697, 3148867, 3149051, 3149221, 3149387, 3149563, 3149747, 3149929, 3150113, 3150293, 3150451, 3150619, 3150799, 3150947, 3151129, 3151259]
theorem check16 : primorialChainCheck 4473 primorial4473 184 3148517 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 3148517 3151259 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3148517) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [3151439, 3151609, 3151789, 3151927, 3152101, 3152273, 3152453, 3152627, 3152801, 3152983, 3153149, 3153331, 3153499, 3153671, 3153853, 3154037]
theorem check17 : primorialChainCheck 4473 primorial4473 184 3151259 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 3151259 3154037 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3151259) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [3154211, 3154387, 3154531, 3154693, 3154871, 3155051, 3155221, 3155389, 3155573, 3155741, 3155923, 3156107, 3156289, 3156469, 3156653, 3156817]
theorem check18 : primorialChainCheck 4473 primorial4473 184 3154037 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 3154037 3156817 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3154037) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [3157001, 3157181, 3157339, 3157501, 3157669, 3157853, 3158033, 3158213, 3158381, 3158557, 3158717, 3158891, 3159067, 3159239, 3159421, 3159577]
theorem check19 : primorialChainCheck 4473 primorial4473 184 3156817 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 3156817 3159577 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3156817) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [3159749, 3159931, 3160111, 3160291, 3160427, 3160607, 3160777, 3160957, 3161131, 3161309, 3161491, 3161651, 3161819, 3162001, 3162167, 3162347]
theorem check20 : primorialChainCheck 4473 primorial4473 184 3159577 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 3159577 3162347 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3159577) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [3162529, 3162703, 3162883, 3163067, 3163249, 3163427, 3163609, 3163793, 3163969, 3164143, 3164323, 3164479, 3164663, 3164827, 3165011, 3165181]
theorem check21 : primorialChainCheck 4473 primorial4473 184 3162347 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 3162347 3165181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3162347) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [3165341, 3165523, 3165707, 3165889, 3166067, 3166231, 3166411, 3166577, 3166753, 3166921, 3167081, 3167257, 3167429, 3167597, 3167771, 3167953]
theorem check22 : primorialChainCheck 4473 primorial4473 184 3165181 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 3165181 3167953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3165181) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [3168119, 3168289, 3168467, 3168629, 3168757, 3168941, 3169121, 3169297, 3169477, 3169643, 3169819, 3169981, 3170149, 3170333, 3170467, 3170621]
theorem check23 : primorialChainCheck 4473 primorial4473 184 3167953 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 3167953 3170621 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3167953) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [3170767, 3170933, 3171107, 3171281, 3171449, 3171611, 3171793, 3171977, 3172159, 3172327, 3172501, 3172681, 3172847, 3173029, 3173207, 3173389]
theorem check24 : primorialChainCheck 4473 primorial4473 184 3170621 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 3170621 3173389 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3170621) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [3173561, 3173717, 3173899, 3174071, 3174251, 3174419, 3174599, 3174781, 3174959, 3175121, 3175259, 3175441, 3175619, 3175801, 3175973, 3176149]
theorem check25 : primorialChainCheck 4473 primorial4473 184 3173389 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 3173389 3176149 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3173389) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [3176333, 3176513, 3176681, 3176861, 3177017, 3177193, 3177373, 3177553, 3177737, 3177919, 3178103, 3178267, 3178451, 3178631, 3178793, 3178963]
theorem check26 : primorialChainCheck 4473 primorial4473 184 3176149 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 3176149 3178963 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3176149) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [3179147, 3179303, 3179483, 3179653, 3179831, 3180013, 3180193, 3180337, 3180521, 3180701, 3180869, 3181051, 3181229, 3181411, 3181579, 3181757]
theorem check27 : primorialChainCheck 4473 primorial4473 184 3178963 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 3178963 3181757 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3178963) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [3181931, 3182107, 3182261, 3182437, 3182609, 3182771, 3182951, 3183119, 3183293, 3183461, 3183643, 3183809, 3183991, 3184169, 3184319, 3184501]
theorem check28 : primorialChainCheck 4473 primorial4473 184 3181757 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 3181757 3184501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3181757) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [3184651, 3184807, 3184969, 3185123, 3185279, 3185461, 3185639, 3185821, 3185981, 3186163, 3186347, 3186517, 3186697, 3186881, 3187061, 3187243]
theorem check29 : primorialChainCheck 4473 primorial4473 184 3184501 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 3184501 3187243 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3184501) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [3187427, 3187609, 3187787, 3187969, 3188131, 3188303, 3188483, 3188659, 3188833, 3189007, 3189191, 3189371, 3189553, 3189737, 3189899, 3190079]
theorem check30 : primorialChainCheck 4473 primorial4473 184 3187243 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 3187243 3190079 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3187243) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [3190249, 3190417, 3190601, 3190753, 3190919, 3191099, 3191281, 3191453, 3191627, 3191803, 3191987, 3192169, 3192353, 3192529, 3192713, 3192887]
theorem check31 : primorialChainCheck 4473 primorial4473 184 3190079 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 3190079 3192887 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3190079) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 3104513 3110011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3104513)
    (mid := 3107249) (hi := 3110011) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 3110011 3115423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3110011)
    (mid := 3112687) (hi := 3115423) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 3115423 3120973 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3115423)
    (mid := 3118183) (hi := 3120973) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 3120973 3126451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3120973)
    (mid := 3123751) (hi := 3126451) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 3126451 3131951 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3126451)
    (mid := 3129169) (hi := 3131951) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 3131951 3137531 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3131951)
    (mid := 3134723) (hi := 3137531) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 3137531 3143003 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3137531)
    (mid := 3140273) (hi := 3143003) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 3143003 3148517 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3143003)
    (mid := 3145741) (hi := 3148517) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 3148517 3154037 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3148517)
    (mid := 3151259) (hi := 3154037) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 3154037 3159577 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3154037)
    (mid := 3156817) (hi := 3159577) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 3159577 3165181 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3159577)
    (mid := 3162347) (hi := 3165181) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 3165181 3170621 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3165181)
    (mid := 3167953) (hi := 3170621) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 3170621 3176149 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3170621)
    (mid := 3173389) (hi := 3176149) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 3176149 3181757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3176149)
    (mid := 3178963) (hi := 3181757) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 3181757 3187243 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3181757)
    (mid := 3184501) (hi := 3187243) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 3187243 3192887 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3187243)
    (mid := 3190079) (hi := 3192887) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 3104513 3115423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3104513)
    (mid := 3110011) (hi := 3115423) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 3115423 3126451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3115423)
    (mid := 3120973) (hi := 3126451) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 3126451 3137531 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3126451)
    (mid := 3131951) (hi := 3137531) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 3137531 3148517 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3137531)
    (mid := 3143003) (hi := 3148517) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 3148517 3159577 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3148517)
    (mid := 3154037) (hi := 3159577) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 3159577 3170621 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3159577)
    (mid := 3165181) (hi := 3170621) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 3170621 3181757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3170621)
    (mid := 3176149) (hi := 3181757) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 3181757 3192887 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3181757)
    (mid := 3187243) (hi := 3192887) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 3104513 3126451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3104513)
    (mid := 3115423) (hi := 3126451) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 3126451 3148517 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3126451)
    (mid := 3137531) (hi := 3148517) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 3148517 3170621 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3148517)
    (mid := 3159577) (hi := 3170621) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 3170621 3192887 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3170621)
    (mid := 3181757) (hi := 3192887) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 3104513 3148517 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3104513)
    (mid := 3126451) (hi := 3148517) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 3148517 3192887 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3148517)
    (mid := 3170621) (hi := 3192887) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 3104513 3192887 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3104513)
    (mid := 3148517) (hi := 3192887) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 3104513 3192887 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block035

#print axioms B699MiddleExtension.PrimorialBlocks.Block035.joined
