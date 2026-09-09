import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block030

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [2664127, 2664307, 2664479, 2664661, 2664829, 2665009, 2665189, 2665373, 2665547, 2665727, 2665891, 2666071, 2666227, 2666393, 2666561, 2666743]
theorem check0 : primorialChainCheck 4473 primorial4473 184 2663953 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 2663953 2666743 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2663953) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [2666891, 2667061, 2667227, 2667383, 2667503, 2667667, 2667851, 2668027, 2668199, 2668363, 2668469, 2668639, 2668793, 2668931, 2669111, 2669281]
theorem check1 : primorialChainCheck 4473 primorial4473 184 2666743 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 2666743 2669281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2666743) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [2669461, 2669603, 2669767, 2669951, 2670131, 2670301, 2670467, 2670643, 2670817, 2670973, 2671139, 2671309, 2671489, 2671667, 2671849, 2672023]
theorem check2 : primorialChainCheck 4473 primorial4473 184 2669281 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 2669281 2672023 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2669281) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [2672203, 2672387, 2672567, 2672731, 2672903, 2673067, 2673227, 2673397, 2673577, 2673761, 2673941, 2674123, 2674303, 2674487, 2674631, 2674733]
theorem check3 : primorialChainCheck 4473 primorial4473 184 2672023 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 2672023 2674733 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2672023) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [2674913, 2675093, 2675261, 2675441, 2675609, 2675773, 2675957, 2676139, 2676313, 2676493, 2676673, 2676847, 2676997, 2677159, 2677343, 2677523]
theorem check4 : primorialChainCheck 4473 primorial4473 184 2674733 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 2674733 2677523 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2674733) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [2677693, 2677861, 2678041, 2678219, 2678399, 2678551, 2678729, 2678909, 2679091, 2679269, 2679449, 2679619, 2679773, 2679953, 2680133, 2680313]
theorem check5 : primorialChainCheck 4473 primorial4473 184 2677523 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 2677523 2680313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2677523) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [2680493, 2680661, 2680837, 2681017, 2681201, 2681381, 2681561, 2681729, 2681897, 2682079, 2682247, 2682397, 2682577, 2682751, 2682887, 2683063]
theorem check6 : primorialChainCheck 4473 primorial4473 184 2680313 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 2680313 2683063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2680313) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [2683223, 2683397, 2683567, 2683727, 2683903, 2684083, 2684257, 2684431, 2684611, 2684777, 2684959, 2685121, 2685301, 2685481, 2685653, 2685827]
theorem check7 : primorialChainCheck 4473 primorial4473 184 2683063 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 2683063 2685827 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2683063) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [2686007, 2686141, 2686319, 2686487, 2686669, 2686841, 2687023, 2687183, 2687357, 2687537, 2687677, 2687857, 2688019, 2688187, 2688349, 2688529]
theorem check8 : primorialChainCheck 4473 primorial4473 184 2685827 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 2685827 2688529 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2685827) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [2688701, 2688883, 2689031, 2689189, 2689369, 2689549, 2689727, 2689903, 2690081, 2690263, 2690431, 2690599, 2690783, 2690959, 2691131, 2691277]
theorem check9 : primorialChainCheck 4473 primorial4473 184 2688529 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 2688529 2691277 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2688529) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [2691443, 2691617, 2691781, 2691959, 2692139, 2692303, 2692463, 2692643, 2692801, 2692981, 2693153, 2693329, 2693503, 2693671, 2693851, 2694031]
theorem check10 : primorialChainCheck 4473 primorial4473 184 2691277 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 2691277 2694031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2691277) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [2694203, 2694383, 2694541, 2694719, 2694899, 2695073, 2695249, 2695411, 2695573, 2695751, 2695933, 2696117, 2696299, 2696483, 2696663, 2696843]
theorem check11 : primorialChainCheck 4473 primorial4473 184 2694031 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 2694031 2696843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2694031) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [2697007, 2697179, 2697307, 2697491, 2697661, 2697823, 2698001, 2698183, 2698357, 2698541, 2698721, 2698867, 2699051, 2699183, 2699357, 2699531]
theorem check12 : primorialChainCheck 4473 primorial4473 184 2696843 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 2696843 2699531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2696843) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [2699713, 2699887, 2700067, 2700241, 2700419, 2700601, 2700779, 2700917, 2701099, 2701277, 2701459, 2701637, 2701789, 2701969, 2702153, 2702327]
theorem check13 : primorialChainCheck 4473 primorial4473 184 2699531 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 2699531 2702327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2699531) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [2702509, 2702681, 2702857, 2703031, 2703199, 2703373, 2703551, 2703733, 2703917, 2704067, 2704217, 2704393, 2704567, 2704747, 2704931, 2705113]
theorem check14 : primorialChainCheck 4473 primorial4473 184 2702327 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 2702327 2705113 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2702327) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [2705291, 2705471, 2705641, 2705821, 2705993, 2706173, 2706343, 2706527, 2706701, 2706857, 2707039, 2707223, 2707391, 2707559, 2707741, 2707921]
theorem check15 : primorialChainCheck 4473 primorial4473 184 2705113 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 2705113 2707921 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2705113) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [2708099, 2708267, 2708443, 2708623, 2708801, 2708983, 2709167, 2709323, 2709491, 2709671, 2709841, 2710013, 2710193, 2710373, 2710553, 2710723]
theorem check16 : primorialChainCheck 4473 primorial4473 184 2707921 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 2707921 2710723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2707921) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [2710907, 2711089, 2711237, 2711417, 2711591, 2711771, 2711941, 2712119, 2712293, 2712449, 2712613, 2712769, 2712947, 2713127, 2713309, 2713493]
theorem check17 : primorialChainCheck 4473 primorial4473 184 2710723 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 2710723 2713493 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2710723) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [2713673, 2713853, 2714029, 2714171, 2714353, 2714513, 2714659, 2714843, 2715007, 2715191, 2715371, 2715551, 2715701, 2715859, 2716027, 2716201]
theorem check18 : primorialChainCheck 4473 primorial4473 184 2713493 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 2713493 2716201 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2713493) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [2716349, 2716523, 2716699, 2716853, 2717027, 2717201, 2717369, 2717549, 2717731, 2717903, 2718061, 2718241, 2718413, 2718571, 2718743, 2718907]
theorem check19 : primorialChainCheck 4473 primorial4473 184 2716201 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 2716201 2718907 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2716201) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [2719081, 2719231, 2719411, 2719583, 2719753, 2719933, 2720117, 2720299, 2720447, 2720623, 2720807, 2720987, 2721167, 2721319, 2721451, 2721619]
theorem check20 : primorialChainCheck 4473 primorial4473 184 2718907 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 2718907 2721619 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2718907) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [2721799, 2721947, 2722117, 2722273, 2722457, 2722639, 2722801, 2722969, 2723153, 2723333, 2723503, 2723687, 2723863, 2724047, 2724229, 2724401]
theorem check21 : primorialChainCheck 4473 primorial4473 184 2721619 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 2721619 2724401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2721619) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [2724583, 2724749, 2724929, 2725057, 2725237, 2725369, 2725553, 2725711, 2725871, 2726051, 2726231, 2726411, 2726569, 2726743, 2726923, 2727107]
theorem check22 : primorialChainCheck 4473 primorial4473 184 2724401 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 2724401 2727107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2724401) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [2727253, 2727437, 2727577, 2727733, 2727913, 2728097, 2728277, 2728447, 2728631, 2728807, 2728981, 2729159, 2729327, 2729501, 2729681, 2729861]
theorem check23 : primorialChainCheck 4473 primorial4473 184 2727107 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 2727107 2729861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2727107) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [2730041, 2730197, 2730347, 2730529, 2730713, 2730869, 2731049, 2731207, 2731381, 2731559, 2731739, 2731921, 2732099, 2732273, 2732449, 2732629]
theorem check24 : primorialChainCheck 4473 primorial4473 184 2729861 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 2729861 2732629 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2729861) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [2732813, 2732993, 2733173, 2733331, 2733499, 2733649, 2733827, 2734009, 2734187, 2734343, 2734513, 2734673, 2734819, 2734981, 2735153, 2735329]
theorem check25 : primorialChainCheck 4473 primorial4473 184 2732629 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 2732629 2735329 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2732629) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [2735507, 2735683, 2735857, 2735983, 2736157, 2736329, 2736511, 2736691, 2736869, 2737043, 2737219, 2737367, 2737543, 2737727, 2737873, 2738051]
theorem check26 : primorialChainCheck 4473 primorial4473 184 2735329 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 2735329 2738051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2735329) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [2738231, 2738389, 2738573, 2738753, 2738933, 2739103, 2739283, 2739437, 2739619, 2739787, 2739931, 2740093, 2740267, 2740421, 2740603, 2740763]
theorem check27 : primorialChainCheck 4473 primorial4473 184 2738051 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 2738051 2740763 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2738051) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [2740943, 2741119, 2741303, 2741483, 2741659, 2741821, 2741993, 2742163, 2742347, 2742529, 2742703, 2742881, 2743057, 2743229, 2743397, 2743577]
theorem check28 : primorialChainCheck 4473 primorial4473 184 2740763 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 2740763 2743577 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2740763) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [2743759, 2743943, 2744117, 2744297, 2744459, 2744639, 2744783, 2744953, 2745131, 2745307, 2745473, 2745643, 2745797, 2745979, 2746151, 2746327]
theorem check29 : primorialChainCheck 4473 primorial4473 184 2743577 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 2743577 2746327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2743577) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [2746511, 2746669, 2746847, 2747023, 2747207, 2747389, 2747567, 2747749, 2747923, 2748089, 2748257, 2748439, 2748617, 2748769, 2748953, 2749133]
theorem check30 : primorialChainCheck 4473 primorial4473 184 2746327 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 2746327 2749133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2746327) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [2749309, 2749447, 2749609, 2749787, 2749921, 2750071, 2750249, 2750431, 2750603, 2750779, 2750963, 2751137, 2751319, 2751493, 2751677, 2751857]
theorem check31 : primorialChainCheck 4473 primorial4473 184 2749133 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 2749133 2751857 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2749133) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 2663953 2669281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2663953)
    (mid := 2666743) (hi := 2669281) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 2669281 2674733 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2669281)
    (mid := 2672023) (hi := 2674733) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 2674733 2680313 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2674733)
    (mid := 2677523) (hi := 2680313) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 2680313 2685827 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2680313)
    (mid := 2683063) (hi := 2685827) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 2685827 2691277 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2685827)
    (mid := 2688529) (hi := 2691277) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 2691277 2696843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2691277)
    (mid := 2694031) (hi := 2696843) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 2696843 2702327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2696843)
    (mid := 2699531) (hi := 2702327) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 2702327 2707921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2702327)
    (mid := 2705113) (hi := 2707921) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 2707921 2713493 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2707921)
    (mid := 2710723) (hi := 2713493) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 2713493 2718907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2713493)
    (mid := 2716201) (hi := 2718907) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 2718907 2724401 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2718907)
    (mid := 2721619) (hi := 2724401) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 2724401 2729861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2724401)
    (mid := 2727107) (hi := 2729861) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 2729861 2735329 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2729861)
    (mid := 2732629) (hi := 2735329) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 2735329 2740763 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2735329)
    (mid := 2738051) (hi := 2740763) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 2740763 2746327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2740763)
    (mid := 2743577) (hi := 2746327) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 2746327 2751857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2746327)
    (mid := 2749133) (hi := 2751857) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 2663953 2674733 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2663953)
    (mid := 2669281) (hi := 2674733) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 2674733 2685827 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2674733)
    (mid := 2680313) (hi := 2685827) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 2685827 2696843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2685827)
    (mid := 2691277) (hi := 2696843) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 2696843 2707921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2696843)
    (mid := 2702327) (hi := 2707921) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 2707921 2718907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2707921)
    (mid := 2713493) (hi := 2718907) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 2718907 2729861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2718907)
    (mid := 2724401) (hi := 2729861) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 2729861 2740763 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2729861)
    (mid := 2735329) (hi := 2740763) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 2740763 2751857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2740763)
    (mid := 2746327) (hi := 2751857) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 2663953 2685827 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2663953)
    (mid := 2674733) (hi := 2685827) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 2685827 2707921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2685827)
    (mid := 2696843) (hi := 2707921) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 2707921 2729861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2707921)
    (mid := 2718907) (hi := 2729861) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 2729861 2751857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2729861)
    (mid := 2740763) (hi := 2751857) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 2663953 2707921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2663953)
    (mid := 2685827) (hi := 2707921) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 2707921 2751857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2707921)
    (mid := 2729861) (hi := 2751857) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 2663953 2751857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2663953)
    (mid := 2707921) (hi := 2751857) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 2663953 2751857 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block030

#print axioms B699MiddleExtension.PrimorialBlocks.Block030.joined
