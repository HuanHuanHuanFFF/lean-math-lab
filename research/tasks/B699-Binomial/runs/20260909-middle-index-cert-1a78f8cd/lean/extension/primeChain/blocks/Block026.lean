import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block026

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [2310773, 2310953, 2311123, 2311289, 2311471, 2311651, 2311823, 2311993, 2312173, 2312347, 2312521, 2312701, 2312881, 2313061, 2313239, 2313419]
theorem check0 : primorialChainCheck 4473 primorial4473 184 2310593 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 2310593 2313419 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2310593) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [2313601, 2313769, 2313947, 2314121, 2314297, 2314439, 2314619, 2314777, 2314957, 2315141, 2315317, 2315491, 2315659, 2315843, 2316011, 2316179]
theorem check1 : primorialChainCheck 4473 primorial4473 184 2313419 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 2313419 2316179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2313419) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [2316361, 2316529, 2316707, 2316877, 2317057, 2317229, 2317391, 2317561, 2317741, 2317921, 2318093, 2318249, 2318417, 2318599, 2318777, 2318959]
theorem check2 : primorialChainCheck 4473 primorial4473 184 2316179 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 2316179 2318959 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2316179) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [2319133, 2319299, 2319479, 2319659, 2319841, 2320001, 2320183, 2320363, 2320547, 2320729, 2320909, 2321089, 2321273, 2321443, 2321623, 2321791]
theorem check3 : primorialChainCheck 4473 primorial4473 184 2318959 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 2318959 2321791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2318959) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [2321959, 2322143, 2322283, 2322457, 2322637, 2322821, 2323003, 2323177, 2323337, 2323463, 2323631, 2323813, 2323987, 2324171, 2324353, 2324533]
theorem check4 : primorialChainCheck 4473 primorial4473 184 2321791 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 2321791 2324533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2321791) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [2324711, 2324879, 2325061, 2325241, 2325377, 2325559, 2325703, 2325881, 2326063, 2326213, 2326369, 2326553, 2326733, 2326913, 2327081, 2327257]
theorem check5 : primorialChainCheck 4473 primorial4473 184 2324533 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 2324533 2327257 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2324533) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [2327441, 2327603, 2327777, 2327959, 2328143, 2328311, 2328479, 2328653, 2328829, 2328973, 2329147, 2329331, 2329513, 2329687, 2329871, 2330051]
theorem check6 : primorialChainCheck 4473 primorial4473 184 2327257 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 2327257 2330051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2327257) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [2330227, 2330389, 2330561, 2330719, 2330903, 2331061, 2331191, 2331367, 2331463, 2331647, 2331829, 2332013, 2332181, 2332339, 2332523, 2332703]
theorem check7 : primorialChainCheck 4473 primorial4473 184 2330051 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 2330051 2332703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2330051) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [2332871, 2333041, 2333207, 2333389, 2333549, 2333731, 2333909, 2334091, 2334263, 2334439, 2334623, 2334803, 2334961, 2335139, 2335321, 2335481]
theorem check8 : primorialChainCheck 4473 primorial4473 184 2332703 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 2332703 2335481 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2332703) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [2335661, 2335843, 2336027, 2336209, 2336393, 2336573, 2336743, 2336923, 2337091, 2337271, 2337397, 2337571, 2337737, 2337913, 2338097, 2338267]
theorem check9 : primorialChainCheck 4473 primorial4473 184 2335481 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 2335481 2338267 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2335481) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [2338421, 2338603, 2338783, 2338951, 2339131, 2339303, 2339461, 2339639, 2339809, 2339977, 2340133, 2340313, 2340493, 2340673, 2340847, 2340983]
theorem check10 : primorialChainCheck 4473 primorial4473 184 2338267 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 2338267 2340983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2338267) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [2341159, 2341343, 2341511, 2341687, 2341861, 2342033, 2342203, 2342381, 2342539, 2342723, 2342869, 2343053, 2343233, 2343413, 2343589, 2343767]
theorem check11 : primorialChainCheck 4473 primorial4473 184 2340983 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 2340983 2343767 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2340983) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [2343949, 2344123, 2344301, 2344471, 2344651, 2344819, 2344987, 2345153, 2345327, 2345509, 2345669, 2345843, 2345989, 2346167, 2346349, 2346523]
theorem check12 : primorialChainCheck 4473 primorial4473 184 2343767 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 2343767 2346523 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2343767) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [2346677, 2346859, 2347043, 2347217, 2347379, 2347561, 2347733, 2347907, 2348089, 2348257, 2348441, 2348597, 2348779, 2348959, 2349143, 2349323]
theorem check13 : primorialChainCheck 4473 primorial4473 184 2346523 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 2346523 2349323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2346523) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [2349499, 2349679, 2349829, 2350001, 2350181, 2350349, 2350529, 2350703, 2350883, 2351053, 2351207, 2351357, 2351533, 2351693, 2351863, 2352043]
theorem check14 : primorialChainCheck 4473 primorial4473 184 2349323 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 2349323 2352043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2349323) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [2352227, 2352403, 2352583, 2352767, 2352947, 2353129, 2353297, 2353457, 2353639, 2353823, 2353993, 2354167, 2354351, 2354531, 2354711, 2354873]
theorem check15 : primorialChainCheck 4473 primorial4473 184 2352043 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 2352043 2354873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2352043) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [2355047, 2355229, 2355403, 2355581, 2355763, 2355917, 2356091, 2356267, 2356451, 2356621, 2356799, 2356973, 2357153, 2357321, 2357483, 2357657]
theorem check16 : primorialChainCheck 4473 primorial4473 184 2354873 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 2354873 2357657 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2354873) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [2357837, 2358017, 2358179, 2358353, 2358497, 2358677, 2358859, 2359043, 2359223, 2359403, 2359561, 2359739, 2359921, 2360101, 2360279, 2360459]
theorem check17 : primorialChainCheck 4473 primorial4473 184 2357657 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 2357657 2360459 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2357657) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [2360621, 2360797, 2360971, 2361133, 2361269, 2361427, 2361607, 2361781, 2361959, 2362141, 2362319, 2362501, 2362681, 2362819, 2362981, 2363159]
theorem check18 : primorialChainCheck 4473 primorial4473 184 2360459 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 2360459 2363159 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2360459) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [2363327, 2363507, 2363681, 2363861, 2364017, 2364199, 2364367, 2364521, 2364679, 2364851, 2365009, 2365169, 2365351, 2365523, 2365681, 2365859]
theorem check19 : primorialChainCheck 4473 primorial4473 184 2363159 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 2363159 2365859 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2363159) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [2366029, 2366209, 2366389, 2366543, 2366711, 2366867, 2367049, 2367221, 2367401, 2367583, 2367767, 2367949, 2368129, 2368313, 2368477, 2368649]
theorem check20 : primorialChainCheck 4473 primorial4473 184 2365859 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 2365859 2368649 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2365859) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [2368829, 2368997, 2369173, 2369351, 2369527, 2369711, 2369867, 2370047, 2370223, 2370391, 2370569, 2370737, 2370917, 2371099, 2371267, 2371427]
theorem check21 : primorialChainCheck 4473 primorial4473 184 2368649 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 2368649 2371427 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2368649) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [2371609, 2371771, 2371937, 2372119, 2372303, 2372479, 2372659, 2372837, 2373001, 2373179, 2373337, 2373487, 2373667, 2373823, 2374007, 2374189]
theorem check22 : primorialChainCheck 4473 primorial4473 184 2371427 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 2371427 2374189 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2371427) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [2374363, 2374531, 2374699, 2374873, 2375047, 2375231, 2375411, 2375573, 2375743, 2375921, 2376097, 2376271, 2376449, 2376629, 2376809, 2376989]
theorem check23 : primorialChainCheck 4473 primorial4473 184 2374189 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 2374189 2376989 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2374189) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [2377163, 2377339, 2377499, 2377673, 2377847, 2378023, 2378197, 2378371, 2378549, 2378711, 2378891, 2379067, 2379241, 2379413, 2379589, 2379761]
theorem check24 : primorialChainCheck 4473 primorial4473 184 2376989 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 2376989 2379761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2376989) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [2379941, 2380123, 2380303, 2380487, 2380667, 2380841, 2381011, 2381191, 2381363, 2381543, 2381693, 2381861, 2382001, 2382181, 2382337, 2382521]
theorem check25 : primorialChainCheck 4473 primorial4473 184 2379761 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 2379761 2382521 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2379761) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [2382701, 2382883, 2383049, 2383219, 2383397, 2383573, 2383753, 2383933, 2384077, 2384257, 2384419, 2384587, 2384771, 2384953, 2385121, 2385293]
theorem check26 : primorialChainCheck 4473 primorial4473 184 2382521 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 2382521 2385293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2382521) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [2385463, 2385637, 2385809, 2385991, 2386169, 2386313, 2386493, 2386667, 2386823, 2387003, 2387183, 2387353, 2387537, 2387687, 2387867, 2388037]
theorem check27 : primorialChainCheck 4473 primorial4473 184 2385293 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 2385293 2388037 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2385293) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [2388187, 2388371, 2388539, 2388703, 2388887, 2389067, 2389249, 2389427, 2389591, 2389757, 2389939, 2390123, 2390299, 2390477, 2390653, 2390831]
theorem check28 : primorialChainCheck 4473 primorial4473 184 2388037 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 2388037 2390831 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2388037) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [2391013, 2391167, 2391349, 2391533, 2391709, 2391889, 2392073, 2392249, 2392433, 2392591, 2392757, 2392939, 2393119, 2393291, 2393473, 2393653]
theorem check29 : primorialChainCheck 4473 primorial4473 184 2390831 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 2390831 2393653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2390831) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [2393837, 2394017, 2394199, 2394383, 2394563, 2394731, 2394913, 2395051, 2395213, 2395397, 2395541, 2395721, 2395901, 2396063, 2396243, 2396423]
theorem check30 : primorialChainCheck 4473 primorial4473 184 2393653 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 2393653 2396423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2393653) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [2396593, 2396767, 2396941, 2397113, 2397277, 2397449, 2397631, 2397793, 2397961, 2398133, 2398307, 2398483, 2398661, 2398789, 2398961, 2399143]
theorem check31 : primorialChainCheck 4473 primorial4473 184 2396423 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 2396423 2399143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2396423) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 2310593 2316179 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2310593)
    (mid := 2313419) (hi := 2316179) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 2316179 2321791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2316179)
    (mid := 2318959) (hi := 2321791) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 2321791 2327257 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2321791)
    (mid := 2324533) (hi := 2327257) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 2327257 2332703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2327257)
    (mid := 2330051) (hi := 2332703) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 2332703 2338267 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2332703)
    (mid := 2335481) (hi := 2338267) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 2338267 2343767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2338267)
    (mid := 2340983) (hi := 2343767) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 2343767 2349323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2343767)
    (mid := 2346523) (hi := 2349323) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 2349323 2354873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2349323)
    (mid := 2352043) (hi := 2354873) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 2354873 2360459 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2354873)
    (mid := 2357657) (hi := 2360459) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 2360459 2365859 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2360459)
    (mid := 2363159) (hi := 2365859) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 2365859 2371427 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2365859)
    (mid := 2368649) (hi := 2371427) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 2371427 2376989 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2371427)
    (mid := 2374189) (hi := 2376989) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 2376989 2382521 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2376989)
    (mid := 2379761) (hi := 2382521) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 2382521 2388037 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2382521)
    (mid := 2385293) (hi := 2388037) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 2388037 2393653 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2388037)
    (mid := 2390831) (hi := 2393653) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 2393653 2399143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2393653)
    (mid := 2396423) (hi := 2399143) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 2310593 2321791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2310593)
    (mid := 2316179) (hi := 2321791) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 2321791 2332703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2321791)
    (mid := 2327257) (hi := 2332703) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 2332703 2343767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2332703)
    (mid := 2338267) (hi := 2343767) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 2343767 2354873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2343767)
    (mid := 2349323) (hi := 2354873) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 2354873 2365859 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2354873)
    (mid := 2360459) (hi := 2365859) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 2365859 2376989 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2365859)
    (mid := 2371427) (hi := 2376989) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 2376989 2388037 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2376989)
    (mid := 2382521) (hi := 2388037) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 2388037 2399143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2388037)
    (mid := 2393653) (hi := 2399143) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 2310593 2332703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2310593)
    (mid := 2321791) (hi := 2332703) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 2332703 2354873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2332703)
    (mid := 2343767) (hi := 2354873) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 2354873 2376989 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2354873)
    (mid := 2365859) (hi := 2376989) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 2376989 2399143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2376989)
    (mid := 2388037) (hi := 2399143) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 2310593 2354873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2310593)
    (mid := 2332703) (hi := 2354873) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 2354873 2399143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2354873)
    (mid := 2376989) (hi := 2399143) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 2310593 2399143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2310593)
    (mid := 2354873) (hi := 2399143) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 2310593 2399143 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block026

#print axioms B699MiddleExtension.PrimorialBlocks.Block026.joined
