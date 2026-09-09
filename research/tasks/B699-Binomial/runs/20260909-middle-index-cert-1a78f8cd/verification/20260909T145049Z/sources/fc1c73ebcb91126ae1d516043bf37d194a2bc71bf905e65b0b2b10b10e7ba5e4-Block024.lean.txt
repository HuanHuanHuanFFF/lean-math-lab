import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block024

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [2134373, 2134549, 2134721, 2134879, 2135057, 2135227, 2135411, 2135563, 2135743, 2135921, 2136091, 2136247, 2136419, 2136601, 2136779, 2136919]
theorem check0 : primorialChainCheck 4473 primorial4473 184 2134201 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 2134201 2136919 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2134201) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [2137073, 2137243, 2137423, 2137571, 2137741, 2137921, 2138093, 2138263, 2138429, 2138593, 2138749, 2138909, 2139091, 2139233, 2139409, 2139583]
theorem check1 : primorialChainCheck 4473 primorial4473 184 2136919 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 2136919 2139583 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2136919) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [2139757, 2139937, 2140121, 2140301, 2140477, 2140637, 2140811, 2140993, 2141159, 2141333, 2141497, 2141681, 2141863, 2142043, 2142227, 2142403]
theorem check2 : primorialChainCheck 4473 primorial4473 184 2139583 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 2139583 2142403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2139583) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [2142587, 2142761, 2142941, 2143109, 2143279, 2143459, 2143627, 2143793, 2143969, 2144143, 2144323, 2144507, 2144689, 2144867, 2145047, 2145197]
theorem check3 : primorialChainCheck 4473 primorial4473 184 2142403 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 2142403 2145197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2142403) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [2145379, 2145551, 2145721, 2145853, 2146009, 2146181, 2146357, 2146531, 2146693, 2146853, 2147023, 2147177, 2147359, 2147527, 2147699, 2147881]
theorem check4 : primorialChainCheck 4473 primorial4473 184 2145197 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 2145197 2147881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2145197) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [2148053, 2148227, 2148403, 2148583, 2148761, 2148907, 2149087, 2149249, 2149421, 2149591, 2149727, 2149909, 2150039, 2150221, 2150399, 2150567]
theorem check5 : primorialChainCheck 4473 primorial4473 184 2147881 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 2147881 2150567 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2147881) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [2150741, 2150923, 2151101, 2151283, 2151467, 2151647, 2151827, 2152009, 2152169, 2152343, 2152517, 2152691, 2152867, 2153051, 2153227, 2153401]
theorem check6 : primorialChainCheck 4473 primorial4473 184 2150567 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 2150567 2153401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2150567) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [2153563, 2153737, 2153909, 2154077, 2154259, 2154419, 2154587, 2154749, 2154931, 2155103, 2155273, 2155451, 2155627, 2155799, 2155963, 2156123]
theorem check7 : primorialChainCheck 4473 primorial4473 184 2153401 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 2153401 2156123 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2153401) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [2156303, 2156461, 2156629, 2156813, 2156993, 2157173, 2157343, 2157527, 2157709, 2157893, 2158073, 2158237, 2158393, 2158577, 2158759, 2158931]
theorem check8 : primorialChainCheck 4473 primorial4473 184 2156123 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 2156123 2158931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2156123) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [2159093, 2159251, 2159419, 2159557, 2159719, 2159903, 2160061, 2160233, 2160409, 2160589, 2160773, 2160953, 2161129, 2161303, 2161469, 2161639]
theorem check9 : primorialChainCheck 4473 primorial4473 184 2158931 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 2158931 2161639 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2158931) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [2161823, 2162003, 2162183, 2162359, 2162543, 2162717, 2162899, 2163079, 2163263, 2163443, 2163613, 2163787, 2163971, 2164121, 2164291, 2164471]
theorem check10 : primorialChainCheck 4473 primorial4473 184 2161639 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 2161639 2164471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2161639) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [2164639, 2164817, 2164991, 2165159, 2165327, 2165483, 2165663, 2165843, 2166023, 2166179, 2166319, 2166467, 2166629, 2166797, 2166977, 2167111]
theorem check11 : primorialChainCheck 4473 primorial4473 184 2164471 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 2164471 2167111 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2164471) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [2167289, 2167471, 2167643, 2167813, 2167987, 2168149, 2168329, 2168501, 2168671, 2168851, 2169031, 2169203, 2169361, 2169539, 2169707, 2169883]
theorem check12 : primorialChainCheck 4473 primorial4473 184 2167111 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 2167111 2169883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2167111) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [2170061, 2170243, 2170423, 2170607, 2170783, 2170943, 2171119, 2171293, 2171441, 2171623, 2171777, 2171951, 2172113, 2172283, 2172461, 2172641]
theorem check13 : primorialChainCheck 4473 primorial4473 184 2169883 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 2169883 2172641 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2169883) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [2172823, 2173001, 2173183, 2173363, 2173531, 2173711, 2173889, 2174071, 2174251, 2174423, 2174603, 2174773, 2174951, 2175127, 2175311, 2175479]
theorem check14 : primorialChainCheck 4473 primorial4473 184 2172641 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 2172641 2175479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2172641) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [2175661, 2175827, 2175997, 2176171, 2176351, 2176501, 2176679, 2176843, 2177027, 2177167, 2177333, 2177509, 2177689, 2177827, 2177999, 2178173]
theorem check15 : primorialChainCheck 4473 primorial4473 184 2175479 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 2175479 2178173 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2175479) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [2178343, 2178511, 2178691, 2178829, 2179013, 2179187, 2179367, 2179543, 2179693, 2179867, 2180051, 2180221, 2180393, 2180569, 2180747, 2180923]
theorem check16 : primorialChainCheck 4473 primorial4473 184 2178173 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 2178173 2180923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2178173) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [2181097, 2181271, 2181449, 2181629, 2181737, 2181919, 2182099, 2182259, 2182441, 2182619, 2182781, 2182949, 2183131, 2183303, 2183471, 2183641]
theorem check17 : primorialChainCheck 4473 primorial4473 184 2180923 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 2180923 2183641 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2180923) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [2183821, 2184001, 2184179, 2184361, 2184509, 2184673, 2184827, 2185009, 2185193, 2185373, 2185541, 2185723, 2185907, 2186087, 2186269, 2186453]
theorem check18 : primorialChainCheck 4473 primorial4473 184 2183641 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 2183641 2186453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2183641) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [2186627, 2186809, 2186993, 2187161, 2187343, 2187517, 2187697, 2187877, 2188061, 2188237, 2188411, 2188583, 2188757, 2188919, 2189101, 2189281]
theorem check19 : primorialChainCheck 4473 primorial4473 184 2186453 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 2186453 2189281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2186453) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [2189461, 2189639, 2189813, 2189989, 2190173, 2190347, 2190523, 2190691, 2190857, 2191031, 2191199, 2191373, 2191549, 2191727, 2191883, 2192063]
theorem check20 : primorialChainCheck 4473 primorial4473 184 2189281 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 2189281 2192063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2189281) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [2192243, 2192423, 2192591, 2192761, 2192941, 2193097, 2193271, 2193449, 2193601, 2193769, 2193953, 2194133, 2194301, 2194471, 2194639, 2194811]
theorem check21 : primorialChainCheck 4473 primorial4473 184 2192063 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 2192063 2194811 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2192063) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [2194993, 2195177, 2195359, 2195527, 2195707, 2195891, 2196067, 2196239, 2196413, 2196589, 2196767, 2196941, 2197087, 2197253, 2197427, 2197609]
theorem check22 : primorialChainCheck 4473 primorial4473 184 2194811 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 2194811 2197609 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2194811) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [2197781, 2197961, 2198137, 2198309, 2198477, 2198659, 2198843, 2198981, 2199163, 2199313, 2199479, 2199661, 2199833, 2200013, 2200193, 2200369]
theorem check23 : primorialChainCheck 4473 primorial4473 184 2197609 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 2197609 2200369 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2197609) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [2200543, 2200727, 2200909, 2201083, 2201209, 2201393, 2201543, 2201723, 2201897, 2202077, 2202253, 2202437, 2202617, 2202799, 2202983, 2203163]
theorem check24 : primorialChainCheck 4473 primorial4473 184 2200369 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 2200369 2203163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2200369) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [2203337, 2203519, 2203679, 2203853, 2204023, 2204207, 2204383, 2204561, 2204737, 2204887, 2205067, 2205251, 2205409, 2205589, 2205761, 2205911]
theorem check25 : primorialChainCheck 4473 primorial4473 184 2203163 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 2203163 2205911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2203163) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [2206093, 2206249, 2206429, 2206613, 2206783, 2206943, 2207123, 2207299, 2207483, 2207633, 2207791, 2207969, 2208131, 2208281, 2208463, 2208643]
theorem check26 : primorialChainCheck 4473 primorial4473 184 2205911 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 2205911 2208643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2205911) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [2208823, 2209003, 2209177, 2209343, 2209523, 2209703, 2209853, 2210029, 2210209, 2210389, 2210573, 2210743, 2210903, 2211061, 2211233, 2211413]
theorem check27 : primorialChainCheck 4473 primorial4473 184 2208643 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 2208643 2211413 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2208643) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [2211593, 2211707, 2211889, 2212069, 2212247, 2212429, 2212589, 2212753, 2212921, 2213093, 2213243, 2213423, 2213593, 2213759, 2213933, 2214103]
theorem check28 : primorialChainCheck 4473 primorial4473 184 2211413 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 2211413 2214103 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2211413) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [2214281, 2214383, 2214559, 2214731, 2214911, 2215091, 2215237, 2215417, 2215583, 2215699, 2215867, 2216047, 2216231, 2216413, 2216587, 2216761]
theorem check29 : primorialChainCheck 4473 primorial4473 184 2214103 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 2214103 2216761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2214103) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [2216941, 2217113, 2217287, 2217443, 2217617, 2217799, 2217967, 2218129, 2218289, 2218451, 2218621, 2218771, 2218943, 2219123, 2219281, 2219461]
theorem check30 : primorialChainCheck 4473 primorial4473 184 2216761 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 2216761 2219461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2216761) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [2219641, 2219813, 2219977, 2220157, 2220331, 2220503, 2220671, 2220839, 2221019, 2221187, 2221343, 2221523, 2221699, 2221871, 2222039, 2222219]
theorem check31 : primorialChainCheck 4473 primorial4473 184 2219461 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 2219461 2222219 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2219461) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 2134201 2139583 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2134201)
    (mid := 2136919) (hi := 2139583) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 2139583 2145197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2139583)
    (mid := 2142403) (hi := 2145197) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 2145197 2150567 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2145197)
    (mid := 2147881) (hi := 2150567) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 2150567 2156123 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2150567)
    (mid := 2153401) (hi := 2156123) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 2156123 2161639 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2156123)
    (mid := 2158931) (hi := 2161639) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 2161639 2167111 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2161639)
    (mid := 2164471) (hi := 2167111) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 2167111 2172641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2167111)
    (mid := 2169883) (hi := 2172641) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 2172641 2178173 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2172641)
    (mid := 2175479) (hi := 2178173) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 2178173 2183641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2178173)
    (mid := 2180923) (hi := 2183641) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 2183641 2189281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2183641)
    (mid := 2186453) (hi := 2189281) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 2189281 2194811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2189281)
    (mid := 2192063) (hi := 2194811) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 2194811 2200369 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2194811)
    (mid := 2197609) (hi := 2200369) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 2200369 2205911 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2200369)
    (mid := 2203163) (hi := 2205911) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 2205911 2211413 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2205911)
    (mid := 2208643) (hi := 2211413) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 2211413 2216761 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2211413)
    (mid := 2214103) (hi := 2216761) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 2216761 2222219 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2216761)
    (mid := 2219461) (hi := 2222219) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 2134201 2145197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2134201)
    (mid := 2139583) (hi := 2145197) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 2145197 2156123 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2145197)
    (mid := 2150567) (hi := 2156123) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 2156123 2167111 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2156123)
    (mid := 2161639) (hi := 2167111) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 2167111 2178173 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2167111)
    (mid := 2172641) (hi := 2178173) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 2178173 2189281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2178173)
    (mid := 2183641) (hi := 2189281) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 2189281 2200369 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2189281)
    (mid := 2194811) (hi := 2200369) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 2200369 2211413 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2200369)
    (mid := 2205911) (hi := 2211413) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 2211413 2222219 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2211413)
    (mid := 2216761) (hi := 2222219) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 2134201 2156123 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2134201)
    (mid := 2145197) (hi := 2156123) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 2156123 2178173 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2156123)
    (mid := 2167111) (hi := 2178173) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 2178173 2200369 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2178173)
    (mid := 2189281) (hi := 2200369) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 2200369 2222219 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2200369)
    (mid := 2211413) (hi := 2222219) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 2134201 2178173 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2134201)
    (mid := 2156123) (hi := 2178173) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 2178173 2222219 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2178173)
    (mid := 2200369) (hi := 2222219) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 2134201 2222219 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2134201)
    (mid := 2178173) (hi := 2222219) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 2134201 2222219 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block024

#print axioms B699MiddleExtension.PrimorialBlocks.Block024.joined
