import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block028

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [2487497, 2487677, 2487833, 2488009, 2488193, 2488363, 2488547, 2488727, 2488909, 2489077, 2489239, 2489423, 2489603, 2489777, 2489947, 2490127]
theorem check0 : primorialChainCheck 4473 primorial4473 184 2487319 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 2487319 2490127 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2487319) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [2490307, 2490479, 2490661, 2490821, 2491001, 2491171, 2491351, 2491523, 2491681, 2491861, 2492023, 2492201, 2492383, 2492563, 2492747, 2492899]
theorem check1 : primorialChainCheck 4473 primorial4473 184 2490127 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 2490127 2492899 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2490127) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [2493083, 2493259, 2493443, 2493599, 2493779, 2493949, 2494123, 2494279, 2494463, 2494637, 2494819, 2494993, 2495177, 2495351, 2495533, 2495657]
theorem check2 : primorialChainCheck 4473 primorial4473 184 2492899 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 2492899 2495657 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2492899) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [2495839, 2496007, 2496191, 2496371, 2496553, 2496737, 2496919, 2497097, 2497259, 2497423, 2497603, 2497771, 2497951, 2498131, 2498299, 2498453]
theorem check3 : primorialChainCheck 4473 primorial4473 184 2495657 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 2495657 2498453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2495657) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [2498603, 2498767, 2498939, 2499121, 2499269, 2499449, 2499631, 2499803, 2499983, 2500163, 2500339, 2500523, 2500679, 2500847, 2501003, 2501171]
theorem check4 : primorialChainCheck 4473 primorial4473 184 2498453 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 2498453 2501171 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2498453) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [2501351, 2501507, 2501689, 2501843, 2502011, 2502191, 2502373, 2502551, 2502733, 2502917, 2503069, 2503253, 2503433, 2503597, 2503759, 2503931]
theorem check5 : primorialChainCheck 4473 primorial4473 184 2501171 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 2501171 2503931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2501171) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [2504101, 2504269, 2504441, 2504611, 2504791, 2504969, 2505143, 2505311, 2505487, 2505641, 2505809, 2505991, 2506129, 2506313, 2506489, 2506661]
theorem check6 : primorialChainCheck 4473 primorial4473 184 2503931 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 2503931 2506661 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2503931) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [2506843, 2507017, 2507149, 2507317, 2507489, 2507671, 2507837, 2508017, 2508167, 2508347, 2508521, 2508697, 2508871, 2509037, 2509219, 2509379]
theorem check7 : primorialChainCheck 4473 primorial4473 184 2506661 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 2506661 2509379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2506661) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [2509561, 2509721, 2509891, 2510051, 2510227, 2510401, 2510581, 2510743, 2510927, 2511109, 2511293, 2511473, 2511643, 2511827, 2512007, 2512177]
theorem check8 : primorialChainCheck 4473 primorial4473 184 2509379 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 2509379 2512177 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2509379) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [2512343, 2512513, 2512691, 2512847, 2513029, 2513209, 2513363, 2513527, 2513699, 2513881, 2514059, 2514241, 2514401, 2514581, 2514737, 2514917]
theorem check9 : primorialChainCheck 4473 primorial4473 184 2512177 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 2512177 2514917 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2512177) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [2515081, 2515241, 2515417, 2515589, 2515757, 2515921, 2516089, 2516273, 2516447, 2516603, 2516783, 2516963, 2517133, 2517311, 2517469, 2517637]
theorem check10 : primorialChainCheck 4473 primorial4473 184 2514917 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 2514917 2517637 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2514917) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [2517821, 2518003, 2518181, 2518357, 2518517, 2518687, 2518847, 2519021, 2519197, 2519369, 2519537, 2519707, 2519879, 2520031, 2520211, 2520383]
theorem check11 : primorialChainCheck 4473 primorial4473 184 2517637 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 2517637 2520383 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2517637) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [2520503, 2520677, 2520853, 2521037, 2521171, 2521339, 2521517, 2521693, 2521847, 2522027, 2522209, 2522393, 2522557, 2522717, 2522881, 2523047]
theorem check12 : primorialChainCheck 4473 primorial4473 184 2520383 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 2520383 2523047 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2520383) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [2523229, 2523413, 2523593, 2523757, 2523931, 2524097, 2524261, 2524439, 2524591, 2524771, 2524939, 2525123, 2525293, 2525473, 2525647, 2525807]
theorem check13 : primorialChainCheck 4473 primorial4473 184 2523047 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 2523047 2525807 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2523047) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [2525989, 2526169, 2526317, 2526497, 2526661, 2526827, 2527009, 2527193, 2527297, 2527477, 2527643, 2527823, 2528003, 2528167, 2528299, 2528479]
theorem check14 : primorialChainCheck 4473 primorial4473 184 2525807 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 2525807 2528479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2525807) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [2528663, 2528833, 2529013, 2529193, 2529367, 2529551, 2529721, 2529899, 2530079, 2530261, 2530441, 2530597, 2530777, 2530961, 2531117, 2531293]
theorem check15 : primorialChainCheck 4473 primorial4473 184 2528479 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 2528479 2531293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2528479) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [2531471, 2531653, 2531833, 2532007, 2532191, 2532349, 2532527, 2532709, 2532883, 2533049, 2533231, 2533397, 2533577, 2533753, 2533913, 2534069]
theorem check16 : primorialChainCheck 4473 primorial4473 184 2531293 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 2531293 2534069 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2531293) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [2534243, 2534423, 2534603, 2534783, 2534957, 2535121, 2535293, 2535473, 2535641, 2535823, 2535983, 2536159, 2536343, 2536517, 2536697, 2536873]
theorem check17 : primorialChainCheck 4473 primorial4473 184 2534069 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 2534069 2536873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2534069) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [2537047, 2537219, 2537363, 2537543, 2537701, 2537881, 2538061, 2538241, 2538421, 2538589, 2538773, 2538953, 2539123, 2539289, 2539469, 2539651]
theorem check18 : primorialChainCheck 4473 primorial4473 184 2536873 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 2536873 2539651 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2536873) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [2539829, 2540011, 2540183, 2540341, 2540519, 2540693, 2540869, 2541053, 2541233, 2541401, 2541563, 2541743, 2541923, 2542103, 2542237, 2542417]
theorem check19 : primorialChainCheck 4473 primorial4473 184 2539651 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 2539651 2542417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2539651) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [2542597, 2542759, 2542933, 2543117, 2543287, 2543461, 2543641, 2543813, 2543971, 2544137, 2544313, 2544497, 2544643, 2544811, 2544977, 2545159]
theorem check20 : primorialChainCheck 4473 primorial4473 184 2542417 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 2542417 2545159 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2542417) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [2545343, 2545523, 2545703, 2545883, 2546051, 2546233, 2546393, 2546569, 2546749, 2546911, 2547073, 2547257, 2547431, 2547613, 2547791, 2547973]
theorem check21 : primorialChainCheck 4473 primorial4473 184 2545159 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 2545159 2547973 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2545159) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [2548157, 2548333, 2548517, 2548697, 2548879, 2549051, 2549219, 2549387, 2549563, 2549737, 2549903, 2550083, 2550253, 2550437, 2550619, 2550791]
theorem check22 : primorialChainCheck 4473 primorial4473 184 2547973 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 2547973 2550791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2547973) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [2550973, 2551127, 2551279, 2551457, 2551639, 2551823, 2551999, 2552183, 2552359, 2552531, 2552713, 2552887, 2553071, 2553251, 2553433, 2553611]
theorem check23 : primorialChainCheck 4473 primorial4473 184 2550791 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 2550791 2553611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2550791) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [2553781, 2553959, 2554141, 2554319, 2554481, 2554663, 2554843, 2555027, 2555197, 2555363, 2555543, 2555711, 2555893, 2556067, 2556233, 2556403]
theorem check24 : primorialChainCheck 4473 primorial4473 184 2553611 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 2553611 2556403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2553611) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [2556577, 2556761, 2556943, 2557127, 2557297, 2557453, 2557631, 2557813, 2557967, 2558137, 2558321, 2558503, 2558683, 2558861, 2559043, 2559223]
theorem check25 : primorialChainCheck 4473 primorial4473 184 2556403 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 2556403 2559223 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2556403) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [2559397, 2559581, 2559751, 2559913, 2560093, 2560273, 2560457, 2560639, 2560823, 2560997, 2561179, 2561341, 2561521, 2561683, 2561863, 2562031]
theorem check26 : primorialChainCheck 4473 primorial4473 184 2559223 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 2559223 2562031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2559223) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [2562199, 2562383, 2562559, 2562737, 2562907, 2563087, 2563261, 2563441, 2563601, 2563777, 2563943, 2564123, 2564279, 2564459, 2564633, 2564813]
theorem check27 : primorialChainCheck 4473 primorial4473 184 2562031 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 2562031 2564813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2562031) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [2564957, 2565139, 2565319, 2565463, 2565643, 2565809, 2565989, 2566171, 2566351, 2566519, 2566699, 2566867, 2567041, 2567219, 2567387, 2567569]
theorem check28 : primorialChainCheck 4473 primorial4473 184 2564813 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 2564813 2567569 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2564813) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [2567753, 2567933, 2568101, 2568271, 2568431, 2568569, 2568739, 2568913, 2569093, 2569267, 2569451, 2569607, 2569789, 2569969, 2570137, 2570317]
theorem check29 : primorialChainCheck 4473 primorial4473 184 2567569 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 2567569 2570317 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2567569) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [2570471, 2570651, 2570831, 2571011, 2571181, 2571337, 2571509, 2571671, 2571851, 2572033, 2572211, 2572393, 2572529, 2572699, 2572877, 2573059]
theorem check30 : primorialChainCheck 4473 primorial4473 184 2570317 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 2570317 2573059 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2570317) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [2573237, 2573413, 2573591, 2573737, 2573891, 2574071, 2574251, 2574433, 2574617, 2574799, 2574983, 2575147, 2575327, 2575499, 2575679, 2575861]
theorem check31 : primorialChainCheck 4473 primorial4473 184 2573059 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 2573059 2575861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2573059) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 2487319 2492899 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2487319)
    (mid := 2490127) (hi := 2492899) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 2492899 2498453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2492899)
    (mid := 2495657) (hi := 2498453) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 2498453 2503931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2498453)
    (mid := 2501171) (hi := 2503931) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 2503931 2509379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2503931)
    (mid := 2506661) (hi := 2509379) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 2509379 2514917 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2509379)
    (mid := 2512177) (hi := 2514917) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 2514917 2520383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2514917)
    (mid := 2517637) (hi := 2520383) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 2520383 2525807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2520383)
    (mid := 2523047) (hi := 2525807) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 2525807 2531293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2525807)
    (mid := 2528479) (hi := 2531293) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 2531293 2536873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2531293)
    (mid := 2534069) (hi := 2536873) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 2536873 2542417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2536873)
    (mid := 2539651) (hi := 2542417) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 2542417 2547973 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2542417)
    (mid := 2545159) (hi := 2547973) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 2547973 2553611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2547973)
    (mid := 2550791) (hi := 2553611) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 2553611 2559223 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2553611)
    (mid := 2556403) (hi := 2559223) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 2559223 2564813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2559223)
    (mid := 2562031) (hi := 2564813) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 2564813 2570317 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2564813)
    (mid := 2567569) (hi := 2570317) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 2570317 2575861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2570317)
    (mid := 2573059) (hi := 2575861) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 2487319 2498453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2487319)
    (mid := 2492899) (hi := 2498453) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 2498453 2509379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2498453)
    (mid := 2503931) (hi := 2509379) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 2509379 2520383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2509379)
    (mid := 2514917) (hi := 2520383) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 2520383 2531293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2520383)
    (mid := 2525807) (hi := 2531293) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 2531293 2542417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2531293)
    (mid := 2536873) (hi := 2542417) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 2542417 2553611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2542417)
    (mid := 2547973) (hi := 2553611) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 2553611 2564813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2553611)
    (mid := 2559223) (hi := 2564813) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 2564813 2575861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2564813)
    (mid := 2570317) (hi := 2575861) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 2487319 2509379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2487319)
    (mid := 2498453) (hi := 2509379) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 2509379 2531293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2509379)
    (mid := 2520383) (hi := 2531293) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 2531293 2553611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2531293)
    (mid := 2542417) (hi := 2553611) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 2553611 2575861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2553611)
    (mid := 2564813) (hi := 2575861) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 2487319 2531293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2487319)
    (mid := 2509379) (hi := 2531293) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 2531293 2575861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2531293)
    (mid := 2553611) (hi := 2575861) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 2487319 2575861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2487319)
    (mid := 2531293) (hi := 2575861) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 2487319 2575861 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block028

#print axioms B699MiddleExtension.PrimorialBlocks.Block028.joined
