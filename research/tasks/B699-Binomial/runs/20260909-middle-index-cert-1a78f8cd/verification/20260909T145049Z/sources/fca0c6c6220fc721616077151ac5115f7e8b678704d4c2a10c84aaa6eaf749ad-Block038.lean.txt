import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block038

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [3368777, 3368957, 3369131, 3369287, 3369469, 3369649, 3369827, 3370009, 3370183, 3370363, 3370541, 3370711, 3370883, 3371063, 3371237, 3371419]
theorem check0 : primorialChainCheck 4473 primorial4473 184 3368593 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 3368593 3371419 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3368593) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [3371579, 3371747, 3371887, 3372067, 3372251, 3372427, 3372601, 3372781, 3372923, 3373103, 3373283, 3373453, 3373631, 3373813, 3373969, 3374113]
theorem check1 : primorialChainCheck 4473 primorial4473 184 3371419 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 3371419 3374113 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3371419) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [3374297, 3374479, 3374621, 3374803, 3374983, 3375167, 3375349, 3375523, 3375703, 3375881, 3376049, 3376229, 3376409, 3376589, 3376771, 3376949]
theorem check2 : primorialChainCheck 4473 primorial4473 184 3374113 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 3374113 3376949 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3374113) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [3377119, 3377303, 3377483, 3377657, 3377837, 3378013, 3378197, 3378377, 3378559, 3378731, 3378913, 3379087, 3379249, 3379429, 3379613, 3379793]
theorem check3 : primorialChainCheck 4473 primorial4473 184 3376949 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 3376949 3379793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3376949) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [3379963, 3380141, 3380317, 3380497, 3380669, 3380837, 3381019, 3381193, 3381361, 3381527, 3381709, 3381881, 3382063, 3382243, 3382427, 3382607]
theorem check4 : primorialChainCheck 4473 primorial4473 184 3379793 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 3379793 3382607 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3379793) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [3382783, 3382961, 3383137, 3383321, 3383503, 3383683, 3383837, 3383999, 3384179, 3384361, 3384529, 3384713, 3384883, 3385049, 3385223, 3385399]
theorem check5 : primorialChainCheck 4473 primorial4473 184 3382607 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 3382607 3385399 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3382607) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [3385583, 3385763, 3385937, 3386093, 3386263, 3386431, 3386611, 3386767, 3386951, 3387119, 3387289, 3387473, 3387653, 3387827, 3387997, 3388181]
theorem check6 : primorialChainCheck 4473 primorial4473 184 3385399 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 3385399 3388181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3385399) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [3388361, 3388523, 3388687, 3388849, 3389017, 3389161, 3389339, 3389521, 3389699, 3389879, 3390061, 3390239, 3390391, 3390571, 3390743, 3390901]
theorem check7 : primorialChainCheck 4473 primorial4473 184 3388181 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 3388181 3390901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3388181) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [3391081, 3391237, 3391393, 3391559, 3391697, 3391877, 3392047, 3392219, 3392341, 3392509, 3392693, 3392869, 3393053, 3393227, 3393409, 3393583]
theorem check8 : primorialChainCheck 4473 primorial4473 184 3390901 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 3390901 3393583 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3390901) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [3393757, 3393893, 3394063, 3394231, 3394411, 3394591, 3394771, 3394927, 3395107, 3395279, 3395437, 3395603, 3395773, 3395947, 3396121, 3396259]
theorem check9 : primorialChainCheck 4473 primorial4473 184 3393583 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 3393583 3396259 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3393583) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [3396439, 3396619, 3396803, 3396983, 3397159, 3397343, 3397519, 3397703, 3397873, 3398051, 3398221, 3398401, 3398581, 3398761, 3398939, 3399089]
theorem check10 : primorialChainCheck 4473 primorial4473 184 3396259 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 3396259 3399089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3396259) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [3399259, 3399443, 3399593, 3399769, 3399943, 3400127, 3400303, 3400471, 3400637, 3400739, 3400919, 3401089, 3401273, 3401449, 3401621, 3401777]
theorem check11 : primorialChainCheck 4473 primorial4473 184 3399089 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 3399089 3401777 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3399089) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [3401947, 3402131, 3402313, 3402473, 3402649, 3402823, 3403003, 3403181, 3403339, 3403523, 3403703, 3403879, 3404057, 3404239, 3404399, 3404579]
theorem check12 : primorialChainCheck 4473 primorial4473 184 3401777 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 3401777 3404579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3401777) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [3404747, 3404923, 3405079, 3405263, 3405431, 3405613, 3405793, 3405973, 3406153, 3406309, 3406493, 3406661, 3406841, 3407003, 3407177, 3407357]
theorem check13 : primorialChainCheck 4473 primorial4473 184 3404579 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 3404579 3407357 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3404579) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [3407533, 3407693, 3407857, 3408037, 3408203, 3408343, 3408527, 3408707, 3408887, 3409057, 3409223, 3409387, 3409529, 3409711, 3409891, 3410053]
theorem check14 : primorialChainCheck 4473 primorial4473 184 3407357 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 3407357 3410053 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3407357) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [3410237, 3410419, 3410599, 3410783, 3410963, 3411143, 3411313, 3411493, 3411673, 3411857, 3412021, 3412187, 3412361, 3412537, 3412687, 3412861]
theorem check15 : primorialChainCheck 4473 primorial4473 184 3410053 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 3410053 3412861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3410053) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [3413021, 3413197, 3413381, 3413539, 3413723, 3413897, 3414079, 3414259, 3414427, 3414589, 3414769, 3414947, 3415123, 3415303, 3415481, 3415627]
theorem check16 : primorialChainCheck 4473 primorial4473 184 3412861 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 3412861 3415627 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3412861) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [3415781, 3415961, 3416141, 3416323, 3416503, 3416683, 3416837, 3417013, 3417173, 3417353, 3417523, 3417707, 3417889, 3418073, 3418249, 3418403]
theorem check17 : primorialChainCheck 4473 primorial4473 184 3415627 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 3415627 3418403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3415627) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [3418511, 3418693, 3418861, 3419033, 3419201, 3419333, 3419509, 3419681, 3419863, 3420047, 3420227, 3420409, 3420581, 3420763, 3420919, 3421091]
theorem check18 : primorialChainCheck 4473 primorial4473 184 3418403 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 3418403 3421091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3418403) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [3421241, 3421423, 3421603, 3421751, 3421927, 3422099, 3422267, 3422437, 3422621, 3422801, 3422971, 3423143, 3423317, 3423487, 3423661, 3423839]
theorem check19 : primorialChainCheck 4473 primorial4473 184 3421091 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 3421091 3423839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3421091) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [3424019, 3424181, 3424363, 3424507, 3424679, 3424819, 3424991, 3425141, 3425297, 3425479, 3425663, 3425843, 3425999, 3426169, 3426343, 3426509]
theorem check20 : primorialChainCheck 4473 primorial4473 184 3423839 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 3423839 3426509 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3423839) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [3426691, 3426853, 3427027, 3427211, 3427393, 3427561, 3427709, 3427891, 3428071, 3428251, 3428423, 3428599, 3428783, 3428947, 3429131, 3429301]
theorem check21 : primorialChainCheck 4473 primorial4473 184 3426509 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 3426509 3429301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3426509) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [3429479, 3429661, 3429821, 3429989, 3430171, 3430351, 3430523, 3430663, 3430831, 3431011, 3431179, 3431353, 3431537, 3431719, 3431903, 3432073]
theorem check22 : primorialChainCheck 4473 primorial4473 184 3429301 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 3429301 3432073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3429301) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [3432257, 3432437, 3432619, 3432799, 3432983, 3433153, 3433333, 3433517, 3433691, 3433849, 3433979, 3434161, 3434317, 3434489, 3434671, 3434819]
theorem check23 : primorialChainCheck 4473 primorial4473 184 3432073 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 3432073 3434819 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3432073) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [3434933, 3435109, 3435293, 3435469, 3435623, 3435799, 3435967, 3436151, 3436331, 3436513, 3436681, 3436847, 3437029, 3437197, 3437381, 3437561]
theorem check24 : primorialChainCheck 4473 primorial4473 184 3434819 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 3434819 3437561 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3434819) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [3437743, 3437923, 3438103, 3438287, 3438469, 3438649, 3438833, 3439013, 3439193, 3439343, 3439477, 3439651, 3439829, 3440011, 3440189, 3440369]
theorem check25 : primorialChainCheck 4473 primorial4473 184 3437561 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 3437561 3440369 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3437561) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [3440551, 3440719, 3440897, 3441077, 3441257, 3441433, 3441617, 3441799, 3441967, 3442141, 3442301, 3442471, 3442651, 3442807, 3442991, 3443171]
theorem check26 : primorialChainCheck 4473 primorial4473 184 3440369 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 3440369 3443171 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3440369) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [3443347, 3443521, 3443683, 3443863, 3444037, 3444209, 3444391, 3444569, 3444743, 3444919, 3445093, 3445259, 3445411, 3445567, 3445723, 3445907]
theorem check27 : primorialChainCheck 4473 primorial4473 184 3443171 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 3443171 3445907 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3443171) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [3446081, 3446231, 3446383, 3446567, 3446743, 3446917, 3447091, 3447251, 3447419, 3447601, 3447767, 3447947, 3448121, 3448283, 3448463, 3448639]
theorem check28 : primorialChainCheck 4473 primorial4473 184 3445907 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 3445907 3448639 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3445907) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [3448817, 3448997, 3449179, 3449363, 3449539, 3449723, 3449903, 3450079, 3450259, 3450431, 3450611, 3450791, 3450959, 3451111, 3451241, 3451423]
theorem check29 : primorialChainCheck 4473 primorial4473 184 3448639 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 3448639 3451423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3448639) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [3451607, 3451781, 3451963, 3452143, 3452297, 3452459, 3452627, 3452809, 3452993, 3453139, 3453313, 3453479, 3453647, 3453829, 3454013, 3454193]
theorem check30 : primorialChainCheck 4473 primorial4473 184 3451423 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 3451423 3454193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3451423) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [3454343, 3454511, 3454687, 3454861, 3455033, 3455213, 3455383, 3455567, 3455741, 3455923, 3456107, 3456269, 3456451, 3456617, 3456793, 3456977]
theorem check31 : primorialChainCheck 4473 primorial4473 184 3454193 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 3454193 3456977 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3454193) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 3368593 3374113 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3368593)
    (mid := 3371419) (hi := 3374113) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 3374113 3379793 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3374113)
    (mid := 3376949) (hi := 3379793) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 3379793 3385399 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3379793)
    (mid := 3382607) (hi := 3385399) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 3385399 3390901 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3385399)
    (mid := 3388181) (hi := 3390901) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 3390901 3396259 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3390901)
    (mid := 3393583) (hi := 3396259) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 3396259 3401777 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3396259)
    (mid := 3399089) (hi := 3401777) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 3401777 3407357 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3401777)
    (mid := 3404579) (hi := 3407357) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 3407357 3412861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3407357)
    (mid := 3410053) (hi := 3412861) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 3412861 3418403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3412861)
    (mid := 3415627) (hi := 3418403) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 3418403 3423839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3418403)
    (mid := 3421091) (hi := 3423839) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 3423839 3429301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3423839)
    (mid := 3426509) (hi := 3429301) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 3429301 3434819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3429301)
    (mid := 3432073) (hi := 3434819) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 3434819 3440369 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3434819)
    (mid := 3437561) (hi := 3440369) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 3440369 3445907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3440369)
    (mid := 3443171) (hi := 3445907) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 3445907 3451423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3445907)
    (mid := 3448639) (hi := 3451423) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 3451423 3456977 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3451423)
    (mid := 3454193) (hi := 3456977) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 3368593 3379793 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3368593)
    (mid := 3374113) (hi := 3379793) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 3379793 3390901 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3379793)
    (mid := 3385399) (hi := 3390901) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 3390901 3401777 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3390901)
    (mid := 3396259) (hi := 3401777) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 3401777 3412861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3401777)
    (mid := 3407357) (hi := 3412861) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 3412861 3423839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3412861)
    (mid := 3418403) (hi := 3423839) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 3423839 3434819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3423839)
    (mid := 3429301) (hi := 3434819) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 3434819 3445907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3434819)
    (mid := 3440369) (hi := 3445907) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 3445907 3456977 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3445907)
    (mid := 3451423) (hi := 3456977) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 3368593 3390901 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3368593)
    (mid := 3379793) (hi := 3390901) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 3390901 3412861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3390901)
    (mid := 3401777) (hi := 3412861) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 3412861 3434819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3412861)
    (mid := 3423839) (hi := 3434819) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 3434819 3456977 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3434819)
    (mid := 3445907) (hi := 3456977) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 3368593 3412861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3368593)
    (mid := 3390901) (hi := 3412861) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 3412861 3456977 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3412861)
    (mid := 3434819) (hi := 3456977) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 3368593 3456977 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3368593)
    (mid := 3412861) (hi := 3456977) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 3368593 3456977 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block038

#print axioms B699MiddleExtension.PrimorialBlocks.Block038.joined
