import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block029

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [2576033, 2576209, 2576393, 2576573, 2576731, 2576909, 2577083, 2577241, 2577413, 2577593, 2577767, 2577947, 2578117, 2578297, 2578469, 2578643]
theorem check0 : primorialChainCheck 4473 primorial4473 184 2575861 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 2575861 2578643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2575861) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [2578819, 2578993, 2579177, 2579341, 2579513, 2579693, 2579827, 2579999, 2580173, 2580341, 2580521, 2580703, 2580887, 2581069, 2581253, 2581429]
theorem check1 : primorialChainCheck 4473 primorial4473 184 2578643 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 2578643 2581429 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2578643) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [2581613, 2581771, 2581951, 2582093, 2582257, 2582441, 2582611, 2582779, 2582953, 2583131, 2583299, 2583467, 2583631, 2583811, 2583979, 2584159]
theorem check2 : primorialChainCheck 4473 primorial4473 184 2581429 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 2581429 2584159 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2581429) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [2584331, 2584511, 2584693, 2584877, 2585057, 2585237, 2585417, 2585579, 2585743, 2585909, 2586061, 2586209, 2586391, 2586569, 2586721, 2586853]
theorem check3 : primorialChainCheck 4473 primorial4473 184 2584159 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 2584159 2586853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2584159) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [2587031, 2587187, 2587357, 2587537, 2587709, 2587889, 2588071, 2588249, 2588419, 2588591, 2588771, 2588923, 2589107, 2589289, 2589473, 2589649]
theorem check4 : primorialChainCheck 4473 primorial4473 184 2586853 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 2586853 2589649 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2586853) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [2589817, 2589991, 2590169, 2590349, 2590507, 2590691, 2590873, 2591053, 2591233, 2591401, 2591579, 2591749, 2591921, 2592103, 2592287, 2592467]
theorem check5 : primorialChainCheck 4473 primorial4473 184 2589649 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 2589649 2592467 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2589649) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [2592649, 2592829, 2592983, 2593159, 2593337, 2593517, 2593697, 2593859, 2594027, 2594209, 2594381, 2594549, 2594723, 2594881, 2595059, 2595193]
theorem check6 : primorialChainCheck 4473 primorial4473 184 2592467 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 2592467 2595193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2592467) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [2595377, 2595559, 2595743, 2595919, 2596091, 2596247, 2596387, 2596553, 2596729, 2596897, 2597081, 2597263, 2597407, 2597591, 2597773, 2597953]
theorem check7 : primorialChainCheck 4473 primorial4473 184 2595193 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 2595193 2597953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2595193) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [2598137, 2598317, 2598443, 2598613, 2598779, 2598941, 2599117, 2599297, 2599451, 2599633, 2599813, 2599991, 2600161, 2600341, 2600519, 2600687]
theorem check8 : primorialChainCheck 4473 primorial4473 184 2597953 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 2597953 2600687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2597953) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [2600867, 2601041, 2601197, 2601377, 2601539, 2601713, 2601869, 2602043, 2602217, 2602399, 2602573, 2602741, 2602909, 2603093, 2603269, 2603443]
theorem check9 : primorialChainCheck 4473 primorial4473 184 2600687 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 2600687 2603443 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2600687) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [2603621, 2603791, 2603933, 2604101, 2604269, 2604439, 2604617, 2604799, 2604977, 2605159, 2605319, 2605501, 2605663, 2605847, 2606017, 2606189]
theorem check10 : primorialChainCheck 4473 primorial4473 184 2603443 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 2603443 2606189 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2603443) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [2606353, 2606519, 2606693, 2606873, 2607041, 2607217, 2607383, 2607557, 2607733, 2607863, 2608037, 2608219, 2608393, 2608577, 2608751, 2608933]
theorem check11 : primorialChainCheck 4473 primorial4473 184 2606189 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 2606189 2608933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2606189) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [2609107, 2609287, 2609471, 2609639, 2609813, 2609989, 2610161, 2610343, 2610499, 2610679, 2610859, 2611043, 2611211, 2611391, 2611573, 2611751]
theorem check12 : primorialChainCheck 4473 primorial4473 184 2608933 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 2608933 2611751 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2608933) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [2611909, 2612083, 2612257, 2612437, 2612549, 2612719, 2612893, 2613077, 2613229, 2613397, 2613547, 2613731, 2613901, 2614081, 2614237, 2614397]
theorem check13 : primorialChainCheck 4473 primorial4473 184 2611751 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 2611751 2614397 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2611751) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [2614567, 2614747, 2614883, 2615051, 2615233, 2615383, 2615551, 2615731, 2615903, 2616071, 2616241, 2616407, 2616577, 2616749, 2616923, 2617103]
theorem check14 : primorialChainCheck 4473 primorial4473 184 2614397 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 2614397 2617103 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2614397) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [2617271, 2617429, 2617613, 2617793, 2617961, 2618117, 2618281, 2618461, 2618633, 2618813, 2618983, 2619163, 2619347, 2619521, 2619691, 2619871]
theorem check15 : primorialChainCheck 4473 primorial4473 184 2617103 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 2617103 2619871 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2617103) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [2620039, 2620223, 2620403, 2620577, 2620741, 2620921, 2621063, 2621239, 2621387, 2621569, 2621737, 2621921, 2622091, 2622241, 2622419, 2622601]
theorem check16 : primorialChainCheck 4473 primorial4473 184 2619871 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 2619871 2622601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2619871) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [2622773, 2622937, 2623111, 2623289, 2623459, 2623639, 2623807, 2623991, 2624173, 2624357, 2624539, 2624711, 2624857, 2625023, 2625169, 2625349]
theorem check17 : primorialChainCheck 4473 primorial4473 184 2622601 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 2622601 2625349 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2622601) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [2625533, 2625691, 2625869, 2626051, 2626229, 2626399, 2626571, 2626753, 2626937, 2627117, 2627297, 2627479, 2627657, 2627837, 2627993, 2628169]
theorem check18 : primorialChainCheck 4473 primorial4473 184 2625349 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 2625349 2628169 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2625349) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [2628347, 2628499, 2628683, 2628839, 2629021, 2629177, 2629351, 2629519, 2629703, 2629877, 2630041, 2630207, 2630389, 2630557, 2630741, 2630923]
theorem check19 : primorialChainCheck 4473 primorial4473 184 2628169 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 2628169 2630923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2628169) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [2631103, 2631283, 2631467, 2631649, 2631833, 2632009, 2632187, 2632369, 2632549, 2632727, 2632907, 2633083, 2633263, 2633447, 2633629, 2633789]
theorem check20 : primorialChainCheck 4473 primorial4473 184 2630923 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 2630923 2633789 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2630923) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [2633947, 2634131, 2634301, 2634479, 2634649, 2634833, 2635007, 2635189, 2635349, 2635489, 2635673, 2635819, 2635987, 2636171, 2636353, 2636527]
theorem check21 : primorialChainCheck 4473 primorial4473 184 2633789 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 2633789 2636527 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2633789) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [2636701, 2636873, 2637043, 2637221, 2637379, 2637553, 2637707, 2637799, 2637983, 2638087, 2638271, 2638411, 2638589, 2638771, 2638949, 2639111]
theorem check22 : primorialChainCheck 4473 primorial4473 184 2636527 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 2636527 2639111 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2636527) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [2639291, 2639447, 2639597, 2639773, 2639953, 2640137, 2640317, 2640497, 2640643, 2640823, 2640997, 2641153, 2641337, 2641519, 2641687, 2641841]
theorem check23 : primorialChainCheck 4473 primorial4473 184 2639111 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 2639111 2641841 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2639111) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [2641993, 2642173, 2642357, 2642537, 2642713, 2642897, 2643079, 2643247, 2643427, 2643607, 2643791, 2643961, 2644141, 2644277, 2644451, 2644627]
theorem check24 : primorialChainCheck 4473 primorial4473 184 2641841 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 2641841 2644627 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2641841) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [2644799, 2644981, 2645141, 2645311, 2645479, 2645663, 2645843, 2646023, 2646179, 2646361, 2646533, 2646671, 2646841, 2647013, 2647193, 2647373]
theorem check25 : primorialChainCheck 4473 primorial4473 184 2644627 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 2644627 2647373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2644627) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [2647549, 2647717, 2647891, 2648057, 2648227, 2648383, 2648567, 2648731, 2648911, 2649091, 2649233, 2649403, 2649587, 2649769, 2649931, 2650093]
theorem check26 : primorialChainCheck 4473 primorial4473 184 2647373 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 2647373 2650093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2647373) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [2650259, 2650433, 2650603, 2650787, 2650969, 2651137, 2651293, 2651471, 2651651, 2651821, 2651989, 2652161, 2652313, 2652487, 2652667, 2652847]
theorem check27 : primorialChainCheck 4473 primorial4473 184 2650093 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 2650093 2652847 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2650093) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [2653019, 2653193, 2653363, 2653543, 2653727, 2653907, 2654083, 2654263, 2654447, 2654621, 2654803, 2654963, 2655139, 2655313, 2655481, 2655661]
theorem check28 : primorialChainCheck 4473 primorial4473 184 2652847 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 2652847 2655661 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2652847) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [2655841, 2656013, 2656189, 2656373, 2656553, 2656729, 2656909, 2657077, 2657257, 2657429, 2657609, 2657779, 2657951, 2658107, 2658289, 2658463]
theorem check29 : primorialChainCheck 4473 primorial4473 184 2655661 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 2655661 2658463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2655661) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [2658641, 2658797, 2658979, 2659159, 2659343, 2659519, 2659691, 2659861, 2660029, 2660183, 2660353, 2660533, 2660659, 2660839, 2661013, 2661181]
theorem check30 : primorialChainCheck 4473 primorial4473 184 2658463 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 2658463 2661181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2658463) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [2661341, 2661517, 2661689, 2661871, 2662027, 2662211, 2662381, 2662547, 2662721, 2662903, 2663081, 2663251, 2663431, 2663603, 2663783, 2663953]
theorem check31 : primorialChainCheck 4473 primorial4473 184 2661181 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 2661181 2663953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2661181) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 2575861 2581429 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2575861)
    (mid := 2578643) (hi := 2581429) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 2581429 2586853 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2581429)
    (mid := 2584159) (hi := 2586853) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 2586853 2592467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2586853)
    (mid := 2589649) (hi := 2592467) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 2592467 2597953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2592467)
    (mid := 2595193) (hi := 2597953) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 2597953 2603443 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2597953)
    (mid := 2600687) (hi := 2603443) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 2603443 2608933 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2603443)
    (mid := 2606189) (hi := 2608933) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 2608933 2614397 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2608933)
    (mid := 2611751) (hi := 2614397) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 2614397 2619871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2614397)
    (mid := 2617103) (hi := 2619871) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 2619871 2625349 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2619871)
    (mid := 2622601) (hi := 2625349) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 2625349 2630923 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2625349)
    (mid := 2628169) (hi := 2630923) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 2630923 2636527 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2630923)
    (mid := 2633789) (hi := 2636527) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 2636527 2641841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2636527)
    (mid := 2639111) (hi := 2641841) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 2641841 2647373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2641841)
    (mid := 2644627) (hi := 2647373) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 2647373 2652847 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2647373)
    (mid := 2650093) (hi := 2652847) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 2652847 2658463 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2652847)
    (mid := 2655661) (hi := 2658463) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 2658463 2663953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2658463)
    (mid := 2661181) (hi := 2663953) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 2575861 2586853 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2575861)
    (mid := 2581429) (hi := 2586853) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 2586853 2597953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2586853)
    (mid := 2592467) (hi := 2597953) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 2597953 2608933 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2597953)
    (mid := 2603443) (hi := 2608933) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 2608933 2619871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2608933)
    (mid := 2614397) (hi := 2619871) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 2619871 2630923 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2619871)
    (mid := 2625349) (hi := 2630923) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 2630923 2641841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2630923)
    (mid := 2636527) (hi := 2641841) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 2641841 2652847 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2641841)
    (mid := 2647373) (hi := 2652847) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 2652847 2663953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2652847)
    (mid := 2658463) (hi := 2663953) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 2575861 2597953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2575861)
    (mid := 2586853) (hi := 2597953) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 2597953 2619871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2597953)
    (mid := 2608933) (hi := 2619871) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 2619871 2641841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2619871)
    (mid := 2630923) (hi := 2641841) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 2641841 2663953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2641841)
    (mid := 2652847) (hi := 2663953) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 2575861 2619871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2575861)
    (mid := 2597953) (hi := 2619871) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 2619871 2663953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2619871)
    (mid := 2641841) (hi := 2663953) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 2575861 2663953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2575861)
    (mid := 2619871) (hi := 2663953) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 2575861 2663953 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block029

#print axioms B699MiddleExtension.PrimorialBlocks.Block029.joined
