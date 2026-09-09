import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block033

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [2928491, 2928647, 2928829, 2929009, 2929189, 2929373, 2929529, 2929711, 2929879, 2930033, 2930201, 2930381, 2930563, 2930747, 2930911, 2931083]
theorem check0 : primorialChainCheck 4473 primorial4473 184 2928319 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 2928319 2931083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2928319) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [2931241, 2931421, 2931587, 2931751, 2931919, 2932091, 2932273, 2932439, 2932609, 2932793, 2932961, 2933143, 2933311, 2933479, 2933659, 2933807]
theorem check1 : primorialChainCheck 4473 primorial4473 184 2931083 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 2931083 2933807 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2931083) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [2933971, 2934143, 2934313, 2934479, 2934647, 2934809, 2934989, 2935171, 2935327, 2935507, 2935687, 2935871, 2936039, 2936207, 2936389, 2936573]
theorem check2 : primorialChainCheck 4473 primorial4473 184 2933807 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 2933807 2936573 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2933807) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [2936753, 2936933, 2937113, 2937283, 2937463, 2937643, 2937827, 2938009, 2938189, 2938361, 2938543, 2938717, 2938861, 2939039, 2939219, 2939401]
theorem check3 : primorialChainCheck 4473 primorial4473 184 2936573 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 2936573 2939401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2936573) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [2939579, 2939753, 2939917, 2940101, 2940277, 2940449, 2940631, 2940799, 2940947, 2941123, 2941297, 2941453, 2941613, 2941781, 2941957, 2942141]
theorem check4 : primorialChainCheck 4473 primorial4473 184 2939401 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 2939401 2942141 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2939401) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [2942323, 2942503, 2942677, 2942843, 2943001, 2943179, 2943361, 2943541, 2943713, 2943887, 2944063, 2944243, 2944427, 2944589, 2944763, 2944937]
theorem check5 : primorialChainCheck 4473 primorial4473 184 2942141 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 2942141 2944937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2942141) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [2945101, 2945249, 2945429, 2945611, 2945773, 2945951, 2946133, 2946299, 2946479, 2946659, 2946841, 2946973, 2947157, 2947339, 2947523, 2947691]
theorem check6 : primorialChainCheck 4473 primorial4473 184 2944937 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 2944937 2947691 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2944937) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [2947853, 2948009, 2948189, 2948369, 2948551, 2948723, 2948903, 2949077, 2949259, 2949421, 2949593, 2949763, 2949931, 2950093, 2950271, 2950447]
theorem check7 : primorialChainCheck 4473 primorial4473 184 2947691 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 2947691 2950447 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2947691) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [2950609, 2950793, 2950963, 2951089, 2951269, 2951449, 2951629, 2951813, 2951987, 2952167, 2952329, 2952511, 2952689, 2952863, 2953021, 2953201]
theorem check8 : primorialChainCheck 4473 primorial4473 184 2950447 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 2950447 2953201 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2950447) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [2953373, 2953537, 2953703, 2953883, 2954059, 2954233, 2954417, 2954599, 2954773, 2954947, 2955131, 2955307, 2955481, 2955653, 2955833, 2956013]
theorem check9 : primorialChainCheck 4473 primorial4473 184 2953201 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 2953201 2956013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2953201) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [2956183, 2956363, 2956531, 2956703, 2956841, 2957023, 2957197, 2957377, 2957531, 2957687, 2957861, 2958041, 2958223, 2958383, 2958563, 2958727]
theorem check10 : primorialChainCheck 4473 primorial4473 184 2956013 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 2956013 2958727 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2956013) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [2958911, 2959091, 2959273, 2959447, 2959631, 2959793, 2959969, 2960137, 2960317, 2960479, 2960653, 2960821, 2960989, 2961149, 2961331, 2961499]
theorem check11 : primorialChainCheck 4473 primorial4473 184 2958727 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 2958727 2961499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2958727) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [2961677, 2961851, 2962033, 2962207, 2962381, 2962549, 2962733, 2962907, 2963047, 2963231, 2963407, 2963567, 2963743, 2963923, 2964097, 2964277]
theorem check12 : primorialChainCheck 4473 primorial4473 184 2961499 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 2961499 2964277 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2961499) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [2964461, 2964617, 2964743, 2964883, 2965043, 2965223, 2965397, 2965579, 2965763, 2965909, 2966083, 2966267, 2966419, 2966599, 2966783, 2966963]
theorem check13 : primorialChainCheck 4473 primorial4473 184 2964277 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 2964277 2966963 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2964277) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [2967131, 2967277, 2967443, 2967607, 2967787, 2967967, 2968139, 2968309, 2968487, 2968639, 2968813, 2968967, 2969147, 2969311, 2969489, 2969669]
theorem check14 : primorialChainCheck 4473 primorial4473 184 2966963 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 2966963 2969669 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2966963) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [2969821, 2969987, 2970167, 2970347, 2970523, 2970701, 2970857, 2971019, 2971193, 2971363, 2971547, 2971699, 2971883, 2972041, 2972219, 2972383]
theorem check15 : primorialChainCheck 4473 primorial4473 184 2969669 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 2969669 2972383 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2969669) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [2972551, 2972731, 2972903, 2973083, 2973263, 2973437, 2973617, 2973787, 2973961, 2974141, 2974297, 2974463, 2974639, 2974819, 2974999, 2975183]
theorem check16 : primorialChainCheck 4473 primorial4473 184 2972383 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 2972383 2975183 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2972383) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [2975363, 2975543, 2975689, 2975857, 2976023, 2976203, 2976359, 2976541, 2976719, 2976893, 2977069, 2977253, 2977417, 2977573, 2977753, 2977937]
theorem check17 : primorialChainCheck 4473 primorial4473 184 2975183 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 2975183 2977937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2975183) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [2978119, 2978303, 2978483, 2978629, 2978797, 2978977, 2979149, 2979329, 2979497, 2979679, 2979863, 2980039, 2980217, 2980391, 2980573, 2980753]
theorem check18 : primorialChainCheck 4473 primorial4473 184 2977937 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 2977937 2980753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2977937) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [2980931, 2981089, 2981263, 2981437, 2981597, 2981779, 2981963, 2982143, 2982289, 2982461, 2982643, 2982827, 2982997, 2983181, 2983363, 2983543]
theorem check19 : primorialChainCheck 4473 primorial4473 184 2980753 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 2980753 2983543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2980753) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [2983709, 2983879, 2984063, 2984239, 2984417, 2984599, 2984777, 2984953, 2985133, 2985317, 2985491, 2985673, 2985847, 2986031, 2986201, 2986367]
theorem check20 : primorialChainCheck 4473 primorial4473 184 2983543 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 2983543 2986367 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2983543) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [2986547, 2986729, 2986889, 2987071, 2987251, 2987429, 2987591, 2987773, 2987947, 2988101, 2988281, 2988443, 2988619, 2988779, 2988961, 2989141]
theorem check21 : primorialChainCheck 4473 primorial4473 184 2986367 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 2986367 2989141 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2986367) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [2989321, 2989487, 2989633, 2989799, 2989963, 2990137, 2990279, 2990459, 2990639, 2990797, 2990957, 2991139, 2991299, 2991481, 2991661, 2991803]
theorem check22 : primorialChainCheck 4473 primorial4473 184 2989141 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 2989141 2991803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2989141) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [2991971, 2992147, 2992331, 2992513, 2992687, 2992859, 2993033, 2993213, 2993371, 2993527, 2993687, 2993869, 2994037, 2994169, 2994319, 2994503]
theorem check23 : primorialChainCheck 4473 primorial4473 184 2991803 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 2991803 2994503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2991803) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [2994671, 2994847, 2995001, 2995171, 2995351, 2995529, 2995709, 2995891, 2996047, 2996219, 2996393, 2996563, 2996729, 2996909, 2997091, 2997271]
theorem check24 : primorialChainCheck 4473 primorial4473 184 2994503 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 2994503 2997271 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2994503) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [2997451, 2997623, 2997779, 2997959, 2998141, 2998319, 2998483, 2998663, 2998841, 2998999, 2999173, 2999357, 2999539, 2999707, 2999879, 3000061]
theorem check25 : primorialChainCheck 4473 primorial4473 184 2997271 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 2997271 3000061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2997271) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [3000229, 3000409, 3000553, 3000733, 3000887, 3001067, 3001237, 3001421, 3001597, 3001777, 3001939, 3002123, 3002281, 3002459, 3002641, 3002807]
theorem check26 : primorialChainCheck 4473 primorial4473 184 3000061 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 3000061 3002807 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3000061) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [3002981, 3003157, 3003337, 3003499, 3003673, 3003827, 3003997, 3004181, 3004361, 3004543, 3004723, 3004901, 3005083, 3005267, 3005449, 3005633]
theorem check27 : primorialChainCheck 4473 primorial4473 184 3002807 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 3002807 3005633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3002807) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [3005809, 3005987, 3006151, 3006323, 3006469, 3006649, 3006827, 3007009, 3007189, 3007373, 3007547, 3007723, 3007897, 3008077, 3008221, 3008393]
theorem check28 : primorialChainCheck 4473 primorial4473 184 3005633 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 3005633 3008393 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3005633) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [3008569, 3008743, 3008923, 3009103, 3009271, 3009451, 3009631, 3009781, 3009959, 3010123, 3010297, 3010481, 3010643, 3010811, 3010981, 3011147]
theorem check29 : primorialChainCheck 4473 primorial4473 184 3008393 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 3008393 3011147 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3008393) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [3011311, 3011483, 3011663, 3011843, 3012019, 3012187, 3012367, 3012551, 3012727, 3012907, 3013091, 3013271, 3013447, 3013601, 3013783, 3013963]
theorem check30 : primorialChainCheck 4473 primorial4473 184 3011147 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 3011147 3013963 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3011147) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [3014147, 3014303, 3014461, 3014639, 3014819, 3014989, 3015163, 3015343, 3015527, 3015697, 3015877, 3016061, 3016241, 3016417, 3016589, 3016759]
theorem check31 : primorialChainCheck 4473 primorial4473 184 3013963 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 3013963 3016759 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3013963) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 2928319 2933807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2928319)
    (mid := 2931083) (hi := 2933807) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 2933807 2939401 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2933807)
    (mid := 2936573) (hi := 2939401) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 2939401 2944937 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2939401)
    (mid := 2942141) (hi := 2944937) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 2944937 2950447 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2944937)
    (mid := 2947691) (hi := 2950447) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 2950447 2956013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2950447)
    (mid := 2953201) (hi := 2956013) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 2956013 2961499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2956013)
    (mid := 2958727) (hi := 2961499) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 2961499 2966963 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2961499)
    (mid := 2964277) (hi := 2966963) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 2966963 2972383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2966963)
    (mid := 2969669) (hi := 2972383) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 2972383 2977937 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2972383)
    (mid := 2975183) (hi := 2977937) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 2977937 2983543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2977937)
    (mid := 2980753) (hi := 2983543) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 2983543 2989141 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2983543)
    (mid := 2986367) (hi := 2989141) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 2989141 2994503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2989141)
    (mid := 2991803) (hi := 2994503) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 2994503 3000061 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2994503)
    (mid := 2997271) (hi := 3000061) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 3000061 3005633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3000061)
    (mid := 3002807) (hi := 3005633) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 3005633 3011147 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3005633)
    (mid := 3008393) (hi := 3011147) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 3011147 3016759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3011147)
    (mid := 3013963) (hi := 3016759) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 2928319 2939401 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2928319)
    (mid := 2933807) (hi := 2939401) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 2939401 2950447 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2939401)
    (mid := 2944937) (hi := 2950447) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 2950447 2961499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2950447)
    (mid := 2956013) (hi := 2961499) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 2961499 2972383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2961499)
    (mid := 2966963) (hi := 2972383) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 2972383 2983543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2972383)
    (mid := 2977937) (hi := 2983543) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 2983543 2994503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2983543)
    (mid := 2989141) (hi := 2994503) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 2994503 3005633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2994503)
    (mid := 3000061) (hi := 3005633) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 3005633 3016759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3005633)
    (mid := 3011147) (hi := 3016759) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 2928319 2950447 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2928319)
    (mid := 2939401) (hi := 2950447) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 2950447 2972383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2950447)
    (mid := 2961499) (hi := 2972383) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 2972383 2994503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2972383)
    (mid := 2983543) (hi := 2994503) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 2994503 3016759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2994503)
    (mid := 3005633) (hi := 3016759) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 2928319 2972383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2928319)
    (mid := 2950447) (hi := 2972383) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 2972383 3016759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2972383)
    (mid := 2994503) (hi := 3016759) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 2928319 3016759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2928319)
    (mid := 2972383) (hi := 3016759) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 2928319 3016759 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block033

#print axioms B699MiddleExtension.PrimorialBlocks.Block033.joined
