import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block025

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [2222387, 2222567, 2222741, 2222921, 2223101, 2223283, 2223467, 2223631, 2223773, 2223943, 2224099, 2224283, 2224459, 2224633, 2224801, 2224979]
theorem check0 : primorialChainCheck 4473 primorial4473 184 2222219 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 2222219 2224979 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2222219) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [2225159, 2225339, 2225501, 2225683, 2225863, 2226041, 2226221, 2226403, 2226571, 2226733, 2226911, 2227087, 2227261, 2227441, 2227609, 2227789]
theorem check1 : primorialChainCheck 4473 primorial4473 184 2224979 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 2224979 2227789 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2224979) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [2227963, 2228143, 2228323, 2228507, 2228687, 2228867, 2229043, 2229169, 2229349, 2229527, 2229701, 2229883, 2230061, 2230243, 2230411, 2230589]
theorem check2 : primorialChainCheck 4473 primorial4473 184 2227789 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 2227789 2230589 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2227789) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [2230759, 2230939, 2231107, 2231279, 2231461, 2231627, 2231809, 2231941, 2232107, 2232281, 2232463, 2232613, 2232793, 2232959, 2233129, 2233303]
theorem check3 : primorialChainCheck 4473 primorial4473 184 2230589 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 2230589 2233303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2230589) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [2233481, 2233657, 2233793, 2233969, 2234149, 2234329, 2234513, 2234693, 2234863, 2235047, 2235229, 2235403, 2235587, 2235767, 2235949, 2236133]
theorem check4 : primorialChainCheck 4473 primorial4473 184 2233303 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 2233303 2236133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2233303) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [2236279, 2236457, 2236627, 2236807, 2236987, 2237171, 2237327, 2237507, 2237689, 2237861, 2238043, 2238217, 2238391, 2238571, 2238749, 2238931]
theorem check5 : primorialChainCheck 4473 primorial4473 184 2236133 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 2236133 2238931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2236133) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [2239103, 2239253, 2239417, 2239591, 2239759, 2239933, 2240113, 2240291, 2240471, 2240647, 2240827, 2241011, 2241193, 2241361, 2241539, 2241721]
theorem check6 : primorialChainCheck 4473 primorial4473 184 2238931 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 2238931 2241721 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2238931) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [2241901, 2242073, 2242231, 2242381, 2242549, 2242733, 2242883, 2243057, 2243221, 2243399, 2243551, 2243723, 2243893, 2243987, 2244167, 2244331]
theorem check7 : primorialChainCheck 4473 primorial4473 184 2241721 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 2241721 2244331 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2241721) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [2244509, 2244691, 2244863, 2245043, 2245223, 2245391, 2245561, 2245739, 2245889, 2246053, 2246219, 2246399, 2246581, 2246749, 2246927, 2247109]
theorem check8 : primorialChainCheck 4473 primorial4473 184 2244331 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 2244331 2247109 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2244331) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [2247293, 2247473, 2247611, 2247793, 2247977, 2248139, 2248303, 2248469, 2248651, 2248787, 2248969, 2249141, 2249311, 2249483, 2249633, 2249813]
theorem check9 : primorialChainCheck 4473 primorial4473 184 2247109 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 2247109 2249813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2247109) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [2249987, 2250167, 2250349, 2250509, 2250679, 2250799, 2250979, 2251163, 2251343, 2251517, 2251687, 2251859, 2252017, 2252189, 2252359, 2252539]
theorem check10 : primorialChainCheck 4473 primorial4473 184 2249813 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 2249813 2252539 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2249813) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [2252711, 2252867, 2253047, 2253221, 2253397, 2253557, 2253739, 2253919, 2254099, 2254283, 2254457, 2254627, 2254801, 2254969, 2255147, 2255321]
theorem check11 : primorialChainCheck 4473 primorial4473 184 2252539 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 2252539 2255321 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2252539) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [2255501, 2255681, 2255837, 2256017, 2256197, 2256379, 2256559, 2256743, 2256923, 2257103, 2257247, 2257403, 2257579, 2257763, 2257943, 2258119]
theorem check12 : primorialChainCheck 4473 primorial4473 184 2255321 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 2255321 2258119 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2255321) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [2258299, 2258483, 2258657, 2258831, 2258987, 2259161, 2259329, 2259503, 2259671, 2259853, 2260019, 2260189, 2260369, 2260549, 2260733, 2260913]
theorem check13 : primorialChainCheck 4473 primorial4473 184 2258119 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 2258119 2260913 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2258119) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [2261093, 2261269, 2261447, 2261621, 2261803, 2261933, 2262103, 2262269, 2262451, 2262629, 2262811, 2262979, 2263141, 2263321, 2263483, 2263643]
theorem check14 : primorialChainCheck 4473 primorial4473 184 2260913 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 2260913 2263643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2260913) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [2263817, 2263969, 2264153, 2264329, 2264513, 2264683, 2264863, 2265019, 2265173, 2265331, 2265499, 2265677, 2265841, 2266021, 2266183, 2266343]
theorem check15 : primorialChainCheck 4473 primorial4473 184 2263643 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 2263643 2266343 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2263643) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [2266519, 2266697, 2266861, 2267029, 2267203, 2267383, 2267563, 2267737, 2267921, 2268103, 2268281, 2268451, 2268631, 2268793, 2268977, 2269159]
theorem check16 : primorialChainCheck 4473 primorial4473 184 2266343 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 2266343 2269159 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2266343) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [2269343, 2269507, 2269661, 2269843, 2270011, 2270183, 2270341, 2270507, 2270689, 2270839, 2271011, 2271163, 2271343, 2271499, 2271683, 2271859]
theorem check17 : primorialChainCheck 4473 primorial4473 184 2269159 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 2269159 2271859 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2269159) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [2272019, 2272201, 2272379, 2272559, 2272733, 2272903, 2273083, 2273267, 2273449, 2273603, 2273783, 2273963, 2274143, 2274289, 2274473, 2274653]
theorem check18 : primorialChainCheck 4473 primorial4473 184 2271859 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 2271859 2274653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2271859) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [2274827, 2274977, 2275151, 2275333, 2275513, 2275697, 2275879, 2276059, 2276243, 2276411, 2276591, 2276753, 2276921, 2277101, 2277259, 2277413]
theorem check19 : primorialChainCheck 4473 primorial4473 184 2274653 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 2274653 2277413 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2274653) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [2277571, 2277733, 2277917, 2278093, 2278277, 2278453, 2278637, 2278813, 2278981, 2279161, 2279339, 2279491, 2279663, 2279843, 2280011, 2280191]
theorem check20 : primorialChainCheck 4473 primorial4473 184 2277413 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 2277413 2280191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2277413) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [2280367, 2280547, 2280709, 2280869, 2281039, 2281219, 2281403, 2281579, 2281751, 2281921, 2282099, 2282281, 2282459, 2282627, 2282807, 2282989]
theorem check21 : primorialChainCheck 4473 primorial4473 184 2280191 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 2280191 2282989 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2280191) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [2283139, 2283319, 2283499, 2283679, 2283851, 2284033, 2284213, 2284391, 2284573, 2284757, 2284937, 2285099, 2285279, 2285447, 2285629, 2285813]
theorem check22 : primorialChainCheck 4473 primorial4473 184 2282989 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 2282989 2285813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2282989) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [2285981, 2286149, 2286307, 2286491, 2286671, 2286847, 2287031, 2287199, 2287381, 2287559, 2287739, 2287921, 2288089, 2288267, 2288449, 2288633]
theorem check23 : primorialChainCheck 4473 primorial4473 184 2285813 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 2285813 2288633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2285813) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [2288809, 2288953, 2289127, 2289281, 2289461, 2289643, 2289817, 2289979, 2290153, 2290283, 2290459, 2290643, 2290817, 2290999, 2291183, 2291353]
theorem check24 : primorialChainCheck 4473 primorial4473 184 2288633 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 2288633 2291353 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2288633) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [2291491, 2291659, 2291827, 2292001, 2292181, 2292361, 2292541, 2292713, 2292887, 2293069, 2293231, 2293397, 2293579, 2293757, 2293937, 2294113]
theorem check25 : primorialChainCheck 4473 primorial4473 184 2291353 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 2291353 2294113 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2291353) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [2294291, 2294449, 2294627, 2294807, 2294987, 2295169, 2295341, 2295521, 2295703, 2295869, 2296039, 2296219, 2296381, 2296529, 2296699, 2296873]
theorem check26 : primorialChainCheck 4473 primorial4473 184 2294113 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 2294113 2296873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2294113) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [2297051, 2297231, 2297411, 2297593, 2297777, 2297957, 2298139, 2298313, 2298493, 2298671, 2298853, 2299021, 2299189, 2299357, 2299541, 2299711]
theorem check27 : primorialChainCheck 4473 primorial4473 184 2296873 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 2296873 2299711 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2296873) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [2299873, 2300057, 2300239, 2300413, 2300591, 2300761, 2300927, 2301107, 2301287, 2301461, 2301623, 2301797, 2301977, 2302159, 2302343, 2302523]
theorem check28 : primorialChainCheck 4473 primorial4473 184 2299711 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 2299711 2302523 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2299711) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [2302681, 2302841, 2303017, 2303179, 2303359, 2303533, 2303713, 2303867, 2304037, 2304217, 2304389, 2304563, 2304727, 2304901, 2305049, 2305169]
theorem check29 : primorialChainCheck 4473 primorial4473 184 2302523 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 2302523 2305169 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2302523) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [2305351, 2305487, 2305651, 2305781, 2305949, 2306131, 2306309, 2306453, 2306627, 2306797, 2306981, 2307163, 2307307, 2307479, 2307661, 2307821]
theorem check30 : primorialChainCheck 4473 primorial4473 184 2305169 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 2305169 2307821 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2305169) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [2308003, 2308183, 2308357, 2308531, 2308699, 2308883, 2309029, 2309179, 2309353, 2309537, 2309711, 2309893, 2310067, 2310241, 2310421, 2310593]
theorem check31 : primorialChainCheck 4473 primorial4473 184 2307821 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 2307821 2310593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2307821) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 2222219 2227789 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2222219)
    (mid := 2224979) (hi := 2227789) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 2227789 2233303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2227789)
    (mid := 2230589) (hi := 2233303) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 2233303 2238931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2233303)
    (mid := 2236133) (hi := 2238931) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 2238931 2244331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2238931)
    (mid := 2241721) (hi := 2244331) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 2244331 2249813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2244331)
    (mid := 2247109) (hi := 2249813) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 2249813 2255321 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2249813)
    (mid := 2252539) (hi := 2255321) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 2255321 2260913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2255321)
    (mid := 2258119) (hi := 2260913) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 2260913 2266343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2260913)
    (mid := 2263643) (hi := 2266343) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 2266343 2271859 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2266343)
    (mid := 2269159) (hi := 2271859) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 2271859 2277413 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2271859)
    (mid := 2274653) (hi := 2277413) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 2277413 2282989 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2277413)
    (mid := 2280191) (hi := 2282989) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 2282989 2288633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2282989)
    (mid := 2285813) (hi := 2288633) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 2288633 2294113 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2288633)
    (mid := 2291353) (hi := 2294113) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 2294113 2299711 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2294113)
    (mid := 2296873) (hi := 2299711) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 2299711 2305169 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2299711)
    (mid := 2302523) (hi := 2305169) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 2305169 2310593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2305169)
    (mid := 2307821) (hi := 2310593) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 2222219 2233303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2222219)
    (mid := 2227789) (hi := 2233303) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 2233303 2244331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2233303)
    (mid := 2238931) (hi := 2244331) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 2244331 2255321 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2244331)
    (mid := 2249813) (hi := 2255321) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 2255321 2266343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2255321)
    (mid := 2260913) (hi := 2266343) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 2266343 2277413 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2266343)
    (mid := 2271859) (hi := 2277413) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 2277413 2288633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2277413)
    (mid := 2282989) (hi := 2288633) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 2288633 2299711 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2288633)
    (mid := 2294113) (hi := 2299711) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 2299711 2310593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2299711)
    (mid := 2305169) (hi := 2310593) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 2222219 2244331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2222219)
    (mid := 2233303) (hi := 2244331) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 2244331 2266343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2244331)
    (mid := 2255321) (hi := 2266343) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 2266343 2288633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2266343)
    (mid := 2277413) (hi := 2288633) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 2288633 2310593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2288633)
    (mid := 2299711) (hi := 2310593) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 2222219 2266343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2222219)
    (mid := 2244331) (hi := 2266343) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 2266343 2310593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2266343)
    (mid := 2288633) (hi := 2310593) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 2222219 2310593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2222219)
    (mid := 2266343) (hi := 2310593) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 2222219 2310593 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block025

#print axioms B699MiddleExtension.PrimorialBlocks.Block025.joined
