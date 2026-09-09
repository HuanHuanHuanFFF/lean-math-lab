import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block206

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [18090937, 18091121, 18091301, 18091481, 18091657, 18091813, 18091993, 18092177, 18092359, 18092531, 18092707, 18092887, 18093041, 18093211, 18093391, 18093547]
theorem check0 : primorialChainCheck 4473 primorial4473 184 18090773 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 18090773 18093547 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18090773) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [18093697, 18093827, 18094009, 18094183, 18094367, 18094543, 18094723, 18094883, 18095057, 18095197, 18095381, 18095527, 18095683, 18095863, 18096031, 18096187]
theorem check1 : primorialChainCheck 4473 primorial4473 184 18093547 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 18093547 18096187 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18093547) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [18096359, 18096541, 18096719, 18096863, 18097043, 18097207, 18097381, 18097561, 18097721, 18097903, 18098083, 18098257, 18098441, 18098623, 18098797, 18098923]
theorem check2 : primorialChainCheck 4473 primorial4473 184 18096187 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 18096187 18098923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18096187) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [18099061, 18099241, 18099379, 18099563, 18099743, 18099869, 18100039, 18100211, 18100387, 18100547, 18100729, 18100897, 18101081, 18101263, 18101431, 18101609]
theorem check3 : primorialChainCheck 4473 primorial4473 184 18098923 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 18098923 18101609 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18098923) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [18101791, 18101971, 18102151, 18102317, 18102499, 18102683, 18102857, 18103003, 18103159, 18103331, 18103493, 18103663, 18103847, 18103999, 18104183, 18104363]
theorem check4 : primorialChainCheck 4473 primorial4473 184 18101609 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 18101609 18104363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18101609) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [18104533, 18104717, 18104893, 18105053, 18105229, 18105413, 18105589, 18105757, 18105937, 18106093, 18106271, 18106453, 18106637, 18106787, 18106969, 18107149]
theorem check5 : primorialChainCheck 4473 primorial4473 184 18104363 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 18104363 18107149 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18104363) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [18107333, 18107491, 18107659, 18107801, 18107983, 18108163, 18108341, 18108509, 18108667, 18108841, 18109019, 18109193, 18109373, 18109547, 18109727, 18109849]
theorem check6 : primorialChainCheck 4473 primorial4473 184 18107149 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 18107149 18109849 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18107149) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [18110017, 18110201, 18110383, 18110563, 18110737, 18110887, 18111061, 18111229, 18111361, 18111539, 18111713, 18111893, 18112019, 18112189, 18112349, 18112517]
theorem check7 : primorialChainCheck 4473 primorial4473 184 18109849 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 18109849 18112517 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18109849) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [18112663, 18112817, 18112999, 18113159, 18113341, 18113521, 18113699, 18113881, 18114043, 18114227, 18114407, 18114559, 18114737, 18114913, 18115093, 18115277]
theorem check8 : primorialChainCheck 4473 primorial4473 184 18112517 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 18112517 18115277 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18112517) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [18115457, 18115639, 18115813, 18115991, 18116173, 18116353, 18116537, 18116719, 18116873, 18117041, 18117191, 18117343, 18117523, 18117707, 18117881, 18118057]
theorem check9 : primorialChainCheck 4473 primorial4473 184 18115277 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 18115277 18118057 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18115277) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [18118231, 18118367, 18118543, 18118721, 18118901, 18119083, 18119261, 18119441, 18119609, 18119771, 18119921, 18120077, 18120259, 18120439, 18120607, 18120779]
theorem check10 : primorialChainCheck 4473 primorial4473 184 18118057 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 18118057 18120779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18118057) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [18120959, 18121123, 18121297, 18121469, 18121651, 18121811, 18121993, 18122173, 18122327, 18122509, 18122669, 18122851, 18122989, 18123143, 18123323, 18123503]
theorem check11 : primorialChainCheck 4473 primorial4473 184 18120779 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 18120779 18123503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18120779) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [18123659, 18123829, 18123991, 18124153, 18124331, 18124511, 18124661, 18124831, 18124999, 18125167, 18125351, 18125531, 18125713, 18125897, 18126079, 18126221]
theorem check12 : primorialChainCheck 4473 primorial4473 184 18123503 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 18123503 18126221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18123503) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [18126401, 18126547, 18126727, 18126907, 18127079, 18127259, 18127441, 18127621, 18127757, 18127939, 18128111, 18128287, 18128471, 18128609, 18128791, 18128963]
theorem check13 : primorialChainCheck 4473 primorial4473 184 18126221 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 18126221 18128963 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18126221) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [18129143, 18129323, 18129493, 18129659, 18129791, 18129953, 18130129, 18130309, 18130493, 18130663, 18130817, 18130967, 18131137, 18131303, 18131479, 18131651]
theorem check14 : primorialChainCheck 4473 primorial4473 184 18128963 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 18128963 18131651 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18128963) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [18131831, 18132007, 18132187, 18132371, 18132539, 18132721, 18132899, 18133069, 18133217, 18133393, 18133571, 18133727, 18133909, 18134071, 18134243, 18134399]
theorem check15 : primorialChainCheck 4473 primorial4473 184 18131651 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 18131651 18134399 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18131651) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [18134573, 18134737, 18134867, 18135037, 18135203, 18135371, 18135547, 18135721, 18135881, 18136061, 18136243, 18136421, 18136597, 18136763, 18136933, 18137089]
theorem check16 : primorialChainCheck 4473 primorial4473 184 18134399 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 18134399 18137089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18134399) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [18137257, 18137429, 18137611, 18137783, 18137941, 18138121, 18138247, 18138409, 18138587, 18138767, 18138947, 18139127, 18139307, 18139487, 18139633, 18139811]
theorem check17 : primorialChainCheck 4473 primorial4473 184 18137089 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 18137089 18139811 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18137089) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [18139987, 18140159, 18140333, 18140503, 18140677, 18140861, 18141031, 18141199, 18141367, 18141547, 18141731, 18141889, 18142073, 18142253, 18142427, 18142609]
theorem check18 : primorialChainCheck 4473 primorial4473 184 18139811 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 18139811 18142609 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18139811) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [18142793, 18142973, 18143137, 18143311, 18143483, 18143659, 18143791, 18143971, 18144149, 18144317, 18144481, 18144619, 18144793, 18144949, 18145123, 18145297]
theorem check19 : primorialChainCheck 4473 primorial4473 184 18142609 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 18142609 18145297 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18142609) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [18145481, 18145661, 18145843, 18146027, 18146203, 18146383, 18146551, 18146717, 18146897, 18147053, 18147221, 18147403, 18147583, 18147757, 18147937, 18148111]
theorem check20 : primorialChainCheck 4473 primorial4473 184 18145297 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 18145297 18148111 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18145297) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [18148271, 18148453, 18148619, 18148799, 18148973, 18149119, 18149303, 18149471, 18149653, 18149837, 18150019, 18150199, 18150383, 18150547, 18150721, 18150877]
theorem check21 : primorialChainCheck 4473 primorial4473 184 18148111 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 18148111 18150877 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18148111) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [18151051, 18151219, 18151379, 18151537, 18151711, 18151877, 18152051, 18152227, 18152339, 18152513, 18152653, 18152833, 18152971, 18153143, 18153323, 18153503]
theorem check22 : primorialChainCheck 4473 primorial4473 184 18150877 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 18150877 18153503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18150877) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [18153679, 18153833, 18153997, 18154117, 18154247, 18154427, 18154603, 18154781, 18154951, 18155107, 18155261, 18155443, 18155581, 18155759, 18155941, 18156107]
theorem check23 : primorialChainCheck 4473 primorial4473 184 18153503 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 18153503 18156107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18153503) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [18156251, 18156433, 18156613, 18156797, 18156977, 18157159, 18157339, 18157523, 18157703, 18157883, 18158029, 18158209, 18158381, 18158563, 18158731, 18158911]
theorem check24 : primorialChainCheck 4473 primorial4473 184 18156107 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 18156107 18158911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18156107) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [18159067, 18159233, 18159409, 18159571, 18159751, 18159923, 18160099, 18160279, 18160463, 18160627, 18160801, 18160973, 18161153, 18161327, 18161509, 18161683]
theorem check25 : primorialChainCheck 4473 primorial4473 184 18158911 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 18158911 18161683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18158911) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [18161851, 18162031, 18162173, 18162329, 18162509, 18162679, 18162863, 18163039, 18163207, 18163351, 18163529, 18163711, 18163891, 18164053, 18164221, 18164387]
theorem check26 : primorialChainCheck 4473 primorial4473 184 18161683 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 18161683 18164387 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18161683) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [18164561, 18164723, 18164869, 18165047, 18165229, 18165391, 18165551, 18165731, 18165913, 18166097, 18166193, 18166373, 18166549, 18166721, 18166901, 18167069]
theorem check27 : primorialChainCheck 4473 primorial4473 184 18164387 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 18164387 18167069 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18164387) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [18167231, 18167389, 18167573, 18167753, 18167927, 18168109, 18168281, 18168439, 18168611, 18168793, 18168977, 18169159, 18169321, 18169493, 18169637, 18169819]
theorem check28 : primorialChainCheck 4473 primorial4473 184 18167069 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 18167069 18169819 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18167069) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [18169967, 18170147, 18170281, 18170461, 18170641, 18170819, 18171001, 18171169, 18171347, 18171523, 18171697, 18171877, 18172019, 18172199, 18172373, 18172549]
theorem check29 : primorialChainCheck 4473 primorial4473 184 18169819 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 18169819 18172549 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18169819) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [18172733, 18172901, 18173041, 18173203, 18173387, 18173567, 18173737, 18173921, 18174103, 18174287, 18174467, 18174643, 18174823, 18175007, 18175189, 18175357]
theorem check30 : primorialChainCheck 4473 primorial4473 184 18172549 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 18172549 18175357 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18172549) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [18175537, 18175709, 18175877, 18176033, 18176209, 18176393, 18176551, 18176729, 18176909, 18177077, 18177259, 18177431, 18177611, 18177793, 18177967, 18178133]
theorem check31 : primorialChainCheck 4473 primorial4473 184 18175357 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 18175357 18178133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18175357) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 18090773 18096187 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18090773)
    (mid := 18093547) (hi := 18096187) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 18096187 18101609 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18096187)
    (mid := 18098923) (hi := 18101609) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 18101609 18107149 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18101609)
    (mid := 18104363) (hi := 18107149) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 18107149 18112517 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18107149)
    (mid := 18109849) (hi := 18112517) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 18112517 18118057 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18112517)
    (mid := 18115277) (hi := 18118057) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 18118057 18123503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18118057)
    (mid := 18120779) (hi := 18123503) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 18123503 18128963 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18123503)
    (mid := 18126221) (hi := 18128963) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 18128963 18134399 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18128963)
    (mid := 18131651) (hi := 18134399) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 18134399 18139811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18134399)
    (mid := 18137089) (hi := 18139811) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 18139811 18145297 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18139811)
    (mid := 18142609) (hi := 18145297) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 18145297 18150877 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18145297)
    (mid := 18148111) (hi := 18150877) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 18150877 18156107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18150877)
    (mid := 18153503) (hi := 18156107) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 18156107 18161683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18156107)
    (mid := 18158911) (hi := 18161683) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 18161683 18167069 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18161683)
    (mid := 18164387) (hi := 18167069) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 18167069 18172549 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18167069)
    (mid := 18169819) (hi := 18172549) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 18172549 18178133 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18172549)
    (mid := 18175357) (hi := 18178133) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 18090773 18101609 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18090773)
    (mid := 18096187) (hi := 18101609) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 18101609 18112517 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18101609)
    (mid := 18107149) (hi := 18112517) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 18112517 18123503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18112517)
    (mid := 18118057) (hi := 18123503) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 18123503 18134399 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18123503)
    (mid := 18128963) (hi := 18134399) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 18134399 18145297 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18134399)
    (mid := 18139811) (hi := 18145297) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 18145297 18156107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18145297)
    (mid := 18150877) (hi := 18156107) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 18156107 18167069 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18156107)
    (mid := 18161683) (hi := 18167069) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 18167069 18178133 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18167069)
    (mid := 18172549) (hi := 18178133) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 18090773 18112517 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18090773)
    (mid := 18101609) (hi := 18112517) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 18112517 18134399 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18112517)
    (mid := 18123503) (hi := 18134399) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 18134399 18156107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18134399)
    (mid := 18145297) (hi := 18156107) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 18156107 18178133 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18156107)
    (mid := 18167069) (hi := 18178133) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 18090773 18134399 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18090773)
    (mid := 18112517) (hi := 18134399) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 18134399 18178133 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18134399)
    (mid := 18156107) (hi := 18178133) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 18090773 18178133 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18090773)
    (mid := 18134399) (hi := 18178133) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 18090773 18178133 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block206

#print axioms B699MiddleExtension.PrimorialBlocks.Block206.joined
