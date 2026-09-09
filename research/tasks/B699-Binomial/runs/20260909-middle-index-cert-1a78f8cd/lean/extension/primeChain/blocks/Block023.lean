import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block023

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [2046223, 2046397, 2046553, 2046731, 2046901, 2047063, 2047237, 2047403, 2047571, 2047741, 2047919, 2048063, 2048243, 2048419, 2048593, 2048749]
theorem check0 : primorialChainCheck 4473 primorial4473 184 2046073 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 2046073 2048749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2046073) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [2048933, 2049107, 2049287, 2049451, 2049629, 2049797, 2049977, 2050141, 2050277, 2050459, 2050639, 2050823, 2050987, 2051171, 2051341, 2051507]
theorem check1 : primorialChainCheck 4473 primorial4473 184 2048749 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 2048749 2051507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2048749) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [2051689, 2051851, 2052023, 2052199, 2052371, 2052553, 2052737, 2052917, 2053091, 2053253, 2053427, 2053603, 2053783, 2053951, 2054131, 2054257]
theorem check2 : primorialChainCheck 4473 primorial4473 184 2051507 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 2051507 2054257 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2051507) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [2054369, 2054543, 2054719, 2054903, 2055071, 2055253, 2055437, 2055611, 2055769, 2055953, 2056111, 2056289, 2056463, 2056631, 2056787, 2056963]
theorem check3 : primorialChainCheck 4473 primorial4473 184 2054257 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 2054257 2056963 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2054257) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [2057147, 2057317, 2057483, 2057659, 2057813, 2057987, 2058169, 2058341, 2058473, 2058653, 2058829, 2059009, 2059181, 2059339, 2059517, 2059697]
theorem check4 : primorialChainCheck 4473 primorial4473 184 2056963 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 2056963 2059697 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2056963) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [2059879, 2060063, 2060243, 2060407, 2060581, 2060753, 2060921, 2061079, 2061247, 2061431, 2061613, 2061793, 2061971, 2062153, 2062303, 2062483]
theorem check5 : primorialChainCheck 4473 primorial4473 184 2059697 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 2059697 2062483 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2059697) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [2062657, 2062829, 2063003, 2063179, 2063359, 2063543, 2063707, 2063881, 2064061, 2064241, 2064421, 2064589, 2064767, 2064949, 2065121, 2065267]
theorem check6 : primorialChainCheck 4473 primorial4473 184 2062483 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 2062483 2065267 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2062483) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [2065429, 2065597, 2065769, 2065937, 2066111, 2066293, 2066473, 2066653, 2066833, 2067007, 2067187, 2067349, 2067529, 2067697, 2067853, 2068037]
theorem check7 : primorialChainCheck 4473 primorial4473 184 2065267 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 2065267 2068037 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2065267) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [2068211, 2068393, 2068553, 2068709, 2068877, 2069051, 2069227, 2069399, 2069581, 2069761, 2069941, 2070091, 2070241, 2070421, 2070587, 2070749]
theorem check8 : primorialChainCheck 4473 primorial4473 184 2068037 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 2068037 2070749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2068037) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [2070931, 2071087, 2071271, 2071453, 2071631, 2071801, 2071973, 2072153, 2072327, 2072491, 2072663, 2072839, 2073011, 2073193, 2073377, 2073521]
theorem check9 : primorialChainCheck 4473 primorial4473 184 2070749 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 2070749 2073521 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2070749) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [2073667, 2073823, 2073997, 2074169, 2074351, 2074529, 2074687, 2074871, 2075041, 2075209, 2075393, 2075573, 2075743, 2075917, 2076089, 2076271]
theorem check10 : primorialChainCheck 4473 primorial4473 184 2073521 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 2073521 2076271 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2073521) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [2076449, 2076629, 2076803, 2076973, 2077151, 2077333, 2077499, 2077681, 2077861, 2078009, 2078191, 2078371, 2078551, 2078731, 2078887, 2079071]
theorem check11 : primorialChainCheck 4473 primorial4473 184 2076271 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 2076271 2079071 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2076271) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [2079251, 2079433, 2079617, 2079787, 2079943, 2080121, 2080289, 2080453, 2080609, 2080777, 2080961, 2081129, 2081311, 2081491, 2081671, 2081851]
theorem check12 : primorialChainCheck 4473 primorial4473 184 2079071 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 2079071 2081851 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2079071) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [2082019, 2082193, 2082341, 2082503, 2082683, 2082863, 2083033, 2083199, 2083357, 2083531, 2083709, 2083889, 2084051, 2084233, 2084413, 2084569]
theorem check13 : primorialChainCheck 4473 primorial4473 184 2081851 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 2081851 2084569 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2081851) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [2084749, 2084921, 2085089, 2085257, 2085409, 2085569, 2085739, 2085899, 2086081, 2086243, 2086423, 2086589, 2086759, 2086939, 2087123, 2087303]
theorem check14 : primorialChainCheck 4473 primorial4473 184 2084569 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 2084569 2087303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2084569) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [2087483, 2087627, 2087809, 2087993, 2088139, 2088301, 2088479, 2088661, 2088833, 2089001, 2089177, 2089361, 2089543, 2089727, 2089897, 2090071]
theorem check15 : primorialChainCheck 4473 primorial4473 184 2087303 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 2087303 2090071 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2087303) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [2090251, 2090381, 2090509, 2090689, 2090873, 2091053, 2091227, 2091409, 2091587, 2091769, 2091953, 2092133, 2092303, 2092481, 2092663, 2092847]
theorem check16 : primorialChainCheck 4473 primorial4473 184 2090071 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 2090071 2092847 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2090071) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [2093029, 2093183, 2093359, 2093537, 2093701, 2093881, 2094041, 2094221, 2094377, 2094551, 2094727, 2094847, 2095021, 2095201, 2095367, 2095547]
theorem check17 : primorialChainCheck 4473 primorial4473 184 2092847 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 2092847 2095547 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2092847) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [2095727, 2095867, 2096051, 2096233, 2096411, 2096569, 2096741, 2096923, 2097097, 2097259, 2097427, 2097611, 2097787, 2097967, 2098133, 2098289]
theorem check18 : primorialChainCheck 4473 primorial4473 184 2095547 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 2095547 2098289 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2095547) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [2098471, 2098651, 2098813, 2098981, 2099147, 2099327, 2099507, 2099677, 2099837, 2100011, 2100193, 2100377, 2100559, 2100743, 2100913, 2101093]
theorem check19 : primorialChainCheck 4473 primorial4473 184 2098289 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 2098289 2101093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2098289) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [2101277, 2101447, 2101621, 2101789, 2101961, 2102143, 2102323, 2102497, 2102651, 2102831, 2103011, 2103193, 2103377, 2103553, 2103719, 2103901]
theorem check20 : primorialChainCheck 4473 primorial4473 184 2101093 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 2101093 2103901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2101093) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [2104061, 2104241, 2104423, 2104607, 2104759, 2104933, 2105111, 2105287, 2105449, 2105611, 2105767, 2105947, 2106107, 2106289, 2106463, 2106631]
theorem check21 : primorialChainCheck 4473 primorial4473 184 2103901 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 2103901 2106631 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2103901) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [2106809, 2106991, 2107153, 2107327, 2107451, 2107627, 2107811, 2107979, 2108159, 2108339, 2108521, 2108699, 2108881, 2109059, 2109223, 2109403]
theorem check22 : primorialChainCheck 4473 primorial4473 184 2106631 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 2106631 2109403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2106631) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [2109577, 2109761, 2109941, 2110123, 2110291, 2110469, 2110637, 2110811, 2110981, 2111159, 2111321, 2111497, 2111677, 2111861, 2112017, 2112193]
theorem check23 : primorialChainCheck 4473 primorial4473 184 2109403 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 2109403 2112193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2109403) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [2112353, 2112533, 2112713, 2112893, 2113043, 2113211, 2113393, 2113567, 2113747, 2113931, 2114113, 2114297, 2114467, 2114627, 2114807, 2114977]
theorem check24 : primorialChainCheck 4473 primorial4473 184 2112193 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 2112193 2114977 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2112193) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [2115133, 2115317, 2115499, 2115683, 2115863, 2116039, 2116199, 2116357, 2116537, 2116717, 2116901, 2117077, 2117239, 2117419, 2117597, 2117777]
theorem check25 : primorialChainCheck 4473 primorial4473 184 2114977 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 2114977 2117777 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2114977) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [2117953, 2118121, 2118301, 2118449, 2118629, 2118811, 2118973, 2119157, 2119319, 2119493, 2119673, 2119837, 2120021, 2120203, 2120387, 2120551]
theorem check26 : primorialChainCheck 4473 primorial4473 184 2117777 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 2117777 2120551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2117777) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [2120731, 2120891, 2121043, 2121199, 2121377, 2121529, 2121683, 2121853, 2122031, 2122213, 2122381, 2122553, 2122723, 2122873, 2123053, 2123237]
theorem check27 : primorialChainCheck 4473 primorial4473 184 2120551 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 2120551 2123237 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2120551) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [2123411, 2123581, 2123761, 2123939, 2124049, 2124233, 2124403, 2124571, 2124679, 2124853, 2125037, 2125219, 2125393, 2125567, 2125751, 2125933]
theorem check28 : primorialChainCheck 4473 primorial4473 184 2123237 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 2123237 2125933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2123237) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [2126101, 2126273, 2126447, 2126627, 2126809, 2126963, 2127143, 2127319, 2127493, 2127667, 2127841, 2128001, 2128183, 2128333, 2128501, 2128669]
theorem check29 : primorialChainCheck 4473 primorial4473 184 2125933 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 2125933 2128669 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2125933) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [2128849, 2129027, 2129207, 2129389, 2129551, 2129719, 2129903, 2130061, 2130241, 2130391, 2130539, 2130721, 2130901, 2131081, 2131253, 2131429]
theorem check30 : primorialChainCheck 4473 primorial4473 184 2128669 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 2128669 2131429 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2128669) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [2131609, 2131793, 2131951, 2132129, 2132311, 2132483, 2132659, 2132839, 2133023, 2133191, 2133367, 2133541, 2133713, 2133839, 2134021, 2134201]
theorem check31 : primorialChainCheck 4473 primorial4473 184 2131429 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 2131429 2134201 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2131429) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 2046073 2051507 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2046073)
    (mid := 2048749) (hi := 2051507) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 2051507 2056963 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2051507)
    (mid := 2054257) (hi := 2056963) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 2056963 2062483 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2056963)
    (mid := 2059697) (hi := 2062483) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 2062483 2068037 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2062483)
    (mid := 2065267) (hi := 2068037) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 2068037 2073521 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2068037)
    (mid := 2070749) (hi := 2073521) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 2073521 2079071 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2073521)
    (mid := 2076271) (hi := 2079071) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 2079071 2084569 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2079071)
    (mid := 2081851) (hi := 2084569) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 2084569 2090071 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2084569)
    (mid := 2087303) (hi := 2090071) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 2090071 2095547 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2090071)
    (mid := 2092847) (hi := 2095547) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 2095547 2101093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2095547)
    (mid := 2098289) (hi := 2101093) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 2101093 2106631 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2101093)
    (mid := 2103901) (hi := 2106631) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 2106631 2112193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2106631)
    (mid := 2109403) (hi := 2112193) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 2112193 2117777 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2112193)
    (mid := 2114977) (hi := 2117777) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 2117777 2123237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2117777)
    (mid := 2120551) (hi := 2123237) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 2123237 2128669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2123237)
    (mid := 2125933) (hi := 2128669) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 2128669 2134201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2128669)
    (mid := 2131429) (hi := 2134201) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 2046073 2056963 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2046073)
    (mid := 2051507) (hi := 2056963) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 2056963 2068037 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2056963)
    (mid := 2062483) (hi := 2068037) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 2068037 2079071 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2068037)
    (mid := 2073521) (hi := 2079071) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 2079071 2090071 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2079071)
    (mid := 2084569) (hi := 2090071) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 2090071 2101093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2090071)
    (mid := 2095547) (hi := 2101093) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 2101093 2112193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2101093)
    (mid := 2106631) (hi := 2112193) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 2112193 2123237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2112193)
    (mid := 2117777) (hi := 2123237) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 2123237 2134201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2123237)
    (mid := 2128669) (hi := 2134201) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 2046073 2068037 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2046073)
    (mid := 2056963) (hi := 2068037) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 2068037 2090071 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2068037)
    (mid := 2079071) (hi := 2090071) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 2090071 2112193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2090071)
    (mid := 2101093) (hi := 2112193) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 2112193 2134201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2112193)
    (mid := 2123237) (hi := 2134201) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 2046073 2090071 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2046073)
    (mid := 2068037) (hi := 2090071) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 2090071 2134201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2090071)
    (mid := 2112193) (hi := 2134201) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 2046073 2134201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2046073)
    (mid := 2090071) (hi := 2134201) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 2046073 2134201 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block023

#print axioms B699MiddleExtension.PrimorialBlocks.Block023.joined
