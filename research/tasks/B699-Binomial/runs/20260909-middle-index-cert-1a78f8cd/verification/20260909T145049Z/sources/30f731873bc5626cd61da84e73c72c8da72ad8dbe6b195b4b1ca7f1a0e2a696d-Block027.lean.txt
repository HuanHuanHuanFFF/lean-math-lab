import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block027

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [2399323, 2399497, 2399671, 2399821, 2400001, 2400169, 2400353, 2400521, 2400703, 2400883, 2401037, 2401219, 2401393, 2401571, 2401741, 2401897]
theorem check0 : primorialChainCheck 4473 primorial4473 184 2399143 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 2399143 2401897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2399143) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [2402053, 2402233, 2402401, 2402579, 2402761, 2402927, 2403091, 2403263, 2403419, 2403593, 2403773, 2403941, 2404111, 2404291, 2404471, 2404643]
theorem check1 : primorialChainCheck 4473 primorial4473 184 2401897 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 2401897 2404643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2401897) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [2404823, 2405003, 2405171, 2405353, 2405527, 2405707, 2405881, 2406029, 2406199, 2406379, 2406557, 2406731, 2406851, 2407033, 2407211, 2407351]
theorem check2 : primorialChainCheck 4473 primorial4473 184 2404643 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 2404643 2407351 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2404643) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [2407529, 2407711, 2407891, 2408069, 2408239, 2408389, 2408569, 2408741, 2408899, 2409061, 2409229, 2409401, 2409569, 2409731, 2409907, 2410081]
theorem check3 : primorialChainCheck 4473 primorial4473 184 2407351 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 2407351 2410081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2407351) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [2410249, 2410433, 2410613, 2410783, 2410949, 2411131, 2411293, 2411471, 2411641, 2411821, 2411971, 2412143, 2412323, 2412491, 2412671, 2412853]
theorem check4 : primorialChainCheck 4473 primorial4473 184 2410081 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 2410081 2412853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2410081) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [2413007, 2413189, 2413373, 2413553, 2413727, 2413909, 2414089, 2414263, 2414443, 2414611, 2414791, 2414963, 2415143, 2415319, 2415503, 2415653]
theorem check5 : primorialChainCheck 4473 primorial4473 184 2412853 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 2412853 2415653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2412853) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [2415779, 2415947, 2416123, 2416307, 2416487, 2416649, 2416807, 2416969, 2417153, 2417309, 2417477, 2417609, 2417773, 2417951, 2418109, 2418293]
theorem check6 : primorialChainCheck 4473 primorial4473 184 2415653 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 2415653 2418293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2415653) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [2418463, 2418613, 2418791, 2418967, 2419127, 2419273, 2419433, 2419603, 2419787, 2419939, 2420123, 2420291, 2420471, 2420633, 2420813, 2420993]
theorem check7 : primorialChainCheck 4473 primorial4473 184 2418293 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 2418293 2420993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2418293) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [2421163, 2421347, 2421527, 2421707, 2421847, 2422027, 2422207, 2422391, 2422561, 2422741, 2422907, 2423087, 2423249, 2423429, 2423593, 2423777]
theorem check8 : primorialChainCheck 4473 primorial4473 184 2420993 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 2420993 2423777 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2420993) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [2423951, 2424113, 2424287, 2424439, 2424619, 2424791, 2424973, 2425139, 2425301, 2425477, 2425637, 2425799, 2425981, 2426143, 2426309, 2426491]
theorem check9 : primorialChainCheck 4473 primorial4473 184 2423777 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 2423777 2426491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2423777) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [2426651, 2426833, 2427001, 2427179, 2427349, 2427527, 2427701, 2427883, 2428057, 2428241, 2428417, 2428577, 2428753, 2428931, 2429107, 2429279]
theorem check10 : primorialChainCheck 4473 primorial4473 184 2426491 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 2426491 2429279 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2426491) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [2429459, 2429633, 2429809, 2429983, 2430163, 2430343, 2430523, 2430691, 2430871, 2431049, 2431223, 2431393, 2431577, 2431757, 2431937, 2432119]
theorem check11 : primorialChainCheck 4473 primorial4473 184 2429279 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 2429279 2432119 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2429279) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [2432293, 2432471, 2432621, 2432791, 2432933, 2433113, 2433293, 2433467, 2433649, 2433833, 2434013, 2434189, 2434361, 2434529, 2434699, 2434879]
theorem check12 : primorialChainCheck 4473 primorial4473 184 2432119 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 2432119 2434879 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2432119) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [2435053, 2435231, 2435393, 2435569, 2435753, 2435929, 2436113, 2436293, 2436449, 2436613, 2436793, 2436977, 2437159, 2437343, 2437507, 2437691]
theorem check13 : primorialChainCheck 4473 primorial4473 184 2434879 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 2434879 2437691 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2434879) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [2437873, 2438027, 2438203, 2438383, 2438567, 2438717, 2438893, 2439071, 2439247, 2439427, 2439571, 2439739, 2439919, 2440091, 2440271, 2440447]
theorem check14 : primorialChainCheck 4473 primorial4473 184 2437691 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 2437691 2440447 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2437691) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [2440621, 2440799, 2440973, 2441143, 2441323, 2441503, 2441683, 2441867, 2442047, 2442227, 2442403, 2442571, 2442719, 2442889, 2443069, 2443241]
theorem check15 : primorialChainCheck 4473 primorial4473 184 2440447 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 2440447 2443241 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2440447) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [2443421, 2443601, 2443783, 2443963, 2444147, 2444291, 2444473, 2444657, 2444839, 2445011, 2445181, 2445353, 2445533, 2445713, 2445887, 2446061]
theorem check16 : primorialChainCheck 4473 primorial4473 184 2443241 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 2443241 2446061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2443241) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [2446207, 2446373, 2446529, 2446693, 2446853, 2447023, 2447161, 2447329, 2447491, 2447647, 2447831, 2448013, 2448197, 2448379, 2448553, 2448737]
theorem check17 : primorialChainCheck 4473 primorial4473 184 2446061 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 2446061 2448737 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2446061) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [2448883, 2449061, 2449231, 2449399, 2449583, 2449757, 2449939, 2450117, 2450293, 2450453, 2450633, 2450813, 2450989, 2451151, 2451331, 2451499]
theorem check18 : primorialChainCheck 4473 primorial4473 184 2448737 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 2448737 2451499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2448737) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [2451671, 2451847, 2452013, 2452181, 2452357, 2452537, 2452721, 2452903, 2453057, 2453233, 2453417, 2453597, 2453779, 2453923, 2454107, 2454289]
theorem check19 : primorialChainCheck 4473 primorial4473 184 2451499 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 2451499 2454289 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2451499) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [2454437, 2454619, 2454791, 2454961, 2455133, 2455309, 2455487, 2455657, 2455823, 2455987, 2456141, 2456323, 2456501, 2456651, 2456807, 2456989]
theorem check20 : primorialChainCheck 4473 primorial4473 184 2454289 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 2454289 2456989 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2454289) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [2457139, 2457319, 2457487, 2457667, 2457839, 2458019, 2458199, 2458373, 2458553, 2458681, 2458843, 2459027, 2459209, 2459393, 2459563, 2459741]
theorem check21 : primorialChainCheck 4473 primorial4473 184 2456989 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 2456989 2459741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2456989) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [2459923, 2460097, 2460281, 2460433, 2460617, 2460797, 2460973, 2461153, 2461337, 2461519, 2461703, 2461873, 2462041, 2462197, 2462359, 2462543]
theorem check22 : primorialChainCheck 4473 primorial4473 184 2459741 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 2459741 2462543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2459741) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [2462717, 2462899, 2463077, 2463257, 2463437, 2463619, 2463779, 2463949, 2464127, 2464307, 2464487, 2464669, 2464853, 2465011, 2465179, 2465363]
theorem check23 : primorialChainCheck 4473 primorial4473 184 2462543 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 2462543 2465363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2462543) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [2465543, 2465707, 2465891, 2466053, 2466223, 2466407, 2466587, 2466749, 2466931, 2467103, 2467277, 2467459, 2467643, 2467783, 2467963, 2468143]
theorem check24 : primorialChainCheck 4473 primorial4473 184 2465363 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 2465363 2468143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2465363) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [2468311, 2468471, 2468639, 2468821, 2468971, 2469149, 2469331, 2469497, 2469679, 2469847, 2470031, 2470213, 2470397, 2470579, 2470757, 2470939]
theorem check25 : primorialChainCheck 4473 primorial4473 184 2468143 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 2468143 2470939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2468143) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [2471113, 2471257, 2471437, 2471621, 2471753, 2471927, 2472097, 2472251, 2472403, 2472577, 2472737, 2472919, 2473099, 2473277, 2473453, 2473633]
theorem check26 : primorialChainCheck 4473 primorial4473 184 2470939 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 2470939 2473633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2470939) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [2473813, 2473997, 2474119, 2474291, 2474431, 2474611, 2474789, 2474957, 2475139, 2475299, 2475439, 2475593, 2475773, 2475917, 2476081, 2476219]
theorem check27 : primorialChainCheck 4473 primorial4473 184 2473633 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 2473633 2476219 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2473633) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [2476393, 2476567, 2476751, 2476927, 2477107, 2477281, 2477413, 2477561, 2477743, 2477911, 2478083, 2478257, 2478407, 2478589, 2478761, 2478937]
theorem check28 : primorialChainCheck 4473 primorial4473 184 2476219 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 2476219 2478937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2476219) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [2479117, 2479283, 2479457, 2479627, 2479811, 2479991, 2480171, 2480339, 2480509, 2480693, 2480873, 2481047, 2481221, 2481389, 2481517, 2481697]
theorem check29 : primorialChainCheck 4473 primorial4473 184 2478937 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 2478937 2481697 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2478937) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [2481877, 2482061, 2482243, 2482421, 2482583, 2482757, 2482937, 2483119, 2483291, 2483461, 2483641, 2483797, 2483953, 2484133, 2484311, 2484491]
theorem check30 : primorialChainCheck 4473 primorial4473 184 2481697 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 2481697 2484491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2481697) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [2484673, 2484857, 2485037, 2485211, 2485393, 2485573, 2485739, 2485907, 2486089, 2486273, 2486443, 2486623, 2486801, 2486971, 2487143, 2487319]
theorem check31 : primorialChainCheck 4473 primorial4473 184 2484491 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 2484491 2487319 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2484491) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 2399143 2404643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2399143)
    (mid := 2401897) (hi := 2404643) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 2404643 2410081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2404643)
    (mid := 2407351) (hi := 2410081) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 2410081 2415653 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2410081)
    (mid := 2412853) (hi := 2415653) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 2415653 2420993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2415653)
    (mid := 2418293) (hi := 2420993) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 2420993 2426491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2420993)
    (mid := 2423777) (hi := 2426491) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 2426491 2432119 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2426491)
    (mid := 2429279) (hi := 2432119) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 2432119 2437691 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2432119)
    (mid := 2434879) (hi := 2437691) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 2437691 2443241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2437691)
    (mid := 2440447) (hi := 2443241) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 2443241 2448737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2443241)
    (mid := 2446061) (hi := 2448737) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 2448737 2454289 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2448737)
    (mid := 2451499) (hi := 2454289) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 2454289 2459741 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2454289)
    (mid := 2456989) (hi := 2459741) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 2459741 2465363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2459741)
    (mid := 2462543) (hi := 2465363) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 2465363 2470939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2465363)
    (mid := 2468143) (hi := 2470939) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 2470939 2476219 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2470939)
    (mid := 2473633) (hi := 2476219) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 2476219 2481697 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2476219)
    (mid := 2478937) (hi := 2481697) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 2481697 2487319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2481697)
    (mid := 2484491) (hi := 2487319) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 2399143 2410081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2399143)
    (mid := 2404643) (hi := 2410081) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 2410081 2420993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2410081)
    (mid := 2415653) (hi := 2420993) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 2420993 2432119 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2420993)
    (mid := 2426491) (hi := 2432119) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 2432119 2443241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2432119)
    (mid := 2437691) (hi := 2443241) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 2443241 2454289 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2443241)
    (mid := 2448737) (hi := 2454289) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 2454289 2465363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2454289)
    (mid := 2459741) (hi := 2465363) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 2465363 2476219 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2465363)
    (mid := 2470939) (hi := 2476219) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 2476219 2487319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2476219)
    (mid := 2481697) (hi := 2487319) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 2399143 2420993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2399143)
    (mid := 2410081) (hi := 2420993) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 2420993 2443241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2420993)
    (mid := 2432119) (hi := 2443241) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 2443241 2465363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2443241)
    (mid := 2454289) (hi := 2465363) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 2465363 2487319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2465363)
    (mid := 2476219) (hi := 2487319) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 2399143 2443241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2399143)
    (mid := 2420993) (hi := 2443241) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 2443241 2487319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2443241)
    (mid := 2465363) (hi := 2487319) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 2399143 2487319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2399143)
    (mid := 2443241) (hi := 2487319) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 2399143 2487319 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block027

#print axioms B699MiddleExtension.PrimorialBlocks.Block027.joined
