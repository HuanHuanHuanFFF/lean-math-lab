import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block137

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [12057637, 12057821, 12057979, 12058159, 12058339, 12058517, 12058691, 12058873, 12059057, 12059209, 12059387, 12059569, 12059753, 12059923, 12060101, 12060281]
theorem check0 : primorialChainCheck 4473 primorial4473 184 12057499 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 12057499 12060281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12057499) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [12060449, 12060619, 12060787, 12060943, 12061123, 12061307, 12061481, 12061663, 12061843, 12062023, 12062203, 12062387, 12062563, 12062737, 12062917, 12063097]
theorem check1 : primorialChainCheck 4473 primorial4473 184 12060281 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 12060281 12063097 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12060281) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [12063269, 12063451, 12063617, 12063791, 12063901, 12064061, 12064243, 12064399, 12064583, 12064739, 12064901, 12065083, 12065237, 12065419, 12065579, 12065759]
theorem check2 : primorialChainCheck 4473 primorial4473 184 12063097 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 12063097 12065759 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12063097) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [12065941, 12066091, 12066269, 12066449, 12066611, 12066749, 12066917, 12067087, 12067271, 12067441, 12067591, 12067751, 12067933, 12068101, 12068279, 12068447]
theorem check3 : primorialChainCheck 4473 primorial4473 184 12065759 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 12065759 12068447 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12065759) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [12068621, 12068803, 12068957, 12069139, 12069311, 12069487, 12069671, 12069851, 12070021, 12070199, 12070337, 12070517, 12070691, 12070853, 12071029, 12071209]
theorem check4 : primorialChainCheck 4473 primorial4473 184 12068447 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 12068447 12071209 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12068447) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [12071387, 12071567, 12071749, 12071933, 12072037, 12072211, 12072383, 12072553, 12072721, 12072899, 12073081, 12073253, 12073427, 12073609, 12073793, 12073939]
theorem check5 : primorialChainCheck 4473 primorial4473 184 12071209 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 12071209 12073939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12071209) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [12074119, 12074299, 12074479, 12074653, 12074837, 12075001, 12075181, 12075331, 12075493, 12075677, 12075841, 12076021, 12076201, 12076349, 12076529, 12076703]
theorem check6 : primorialChainCheck 4473 primorial4473 184 12073939 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 12073939 12076703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12073939) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [12076871, 12077017, 12077161, 12077333, 12077501, 12077683, 12077867, 12078049, 12078233, 12078403, 12078581, 12078751, 12078923, 12079103, 12079267, 12079433]
theorem check7 : primorialChainCheck 4473 primorial4473 184 12076703 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 12076703 12079433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12076703) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [12079591, 12079733, 12079913, 12080027, 12080207, 12080381, 12080533, 12080707, 12080869, 12081037, 12081193, 12081343, 12081527, 12081703, 12081871, 12082027]
theorem check8 : primorialChainCheck 4473 primorial4473 184 12079433 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 12079433 12082027 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12079433) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [12082211, 12082391, 12082573, 12082753, 12082921, 12083083, 12083237, 12083363, 12083527, 12083699, 12083879, 12084047, 12084227, 12084409, 12084581, 12084749]
theorem check9 : primorialChainCheck 4473 primorial4473 184 12082027 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 12082027 12084749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12082027) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [12084929, 12085111, 12085291, 12085471, 12085631, 12085813, 12085993, 12086177, 12086351, 12086509, 12086639, 12086821, 12086981, 12087161, 12087311, 12087463]
theorem check10 : primorialChainCheck 4473 primorial4473 184 12084749 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 12084749 12087463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12084749) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [12087623, 12087793, 12087947, 12088127, 12088283, 12088463, 12088631, 12088799, 12088981, 12089131, 12089309, 12089489, 12089663, 12089843, 12090011, 12090173]
theorem check11 : primorialChainCheck 4473 primorial4473 184 12087463 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 12087463 12090173 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12087463) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [12090343, 12090503, 12090671, 12090853, 12091033, 12091181, 12091363, 12091517, 12091699, 12091867, 12092033, 12092209, 12092371, 12092551, 12092723, 12092891]
theorem check12 : primorialChainCheck 4473 primorial4473 184 12090173 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 12090173 12092891 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12090173) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [12093071, 12093229, 12093391, 12093569, 12093743, 12093901, 12094039, 12094217, 12094391, 12094559, 12094741, 12094919, 12095087, 12095269, 12095441, 12095617]
theorem check13 : primorialChainCheck 4473 primorial4473 184 12092891 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 12092891 12095617 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12092891) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [12095801, 12095971, 12096131, 12096307, 12096481, 12096653, 12096823, 12097003, 12097177, 12097361, 12097543, 12097691, 12097871, 12098027, 12098201, 12098377]
theorem check14 : primorialChainCheck 4473 primorial4473 184 12095617 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 12095617 12098377 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12095617) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [12098561, 12098743, 12098921, 12099089, 12099271, 12099443, 12099611, 12099761, 12099929, 12100111, 12100273, 12100441, 12100609, 12100793, 12100973, 12101153]
theorem check15 : primorialChainCheck 4473 primorial4473 184 12098377 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 12098377 12101153 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12098377) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [12101329, 12101477, 12101659, 12101839, 12102023, 12102199, 12102383, 12102557, 12102733, 12102917, 12103093, 12103277, 12103459, 12103639, 12103811, 12103967]
theorem check16 : primorialChainCheck 4473 primorial4473 184 12101153 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 12101153 12103967 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12101153) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [12104111, 12104249, 12104429, 12104597, 12104753, 12104903, 12105083, 12105211, 12105391, 12105563, 12105739, 12105923, 12106093, 12106277, 12106459, 12106639]
theorem check17 : primorialChainCheck 4473 primorial4473 184 12103967 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 12103967 12106639 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12103967) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [12106823, 12107003, 12107171, 12107353, 12107533, 12107687, 12107869, 12108043, 12108223, 12108401, 12108581, 12108763, 12108931, 12109103, 12109283, 12109463]
theorem check18 : primorialChainCheck 4473 primorial4473 184 12106639 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 12106639 12109463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12106639) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [12109633, 12109817, 12109991, 12110123, 12110303, 12110471, 12110639, 12110797, 12110971, 12111149, 12111331, 12111511, 12111601, 12111779, 12111929, 12112069]
theorem check19 : primorialChainCheck 4473 primorial4473 184 12109463 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 12109463 12112069 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12109463) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [12112241, 12112423, 12112603, 12112781, 12112957, 12113119, 12113303, 12113483, 12113657, 12113833, 12114017, 12114197, 12114367, 12114497, 12114679, 12114857]
theorem check20 : primorialChainCheck 4473 primorial4473 184 12112069 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 12112069 12114857 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12112069) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [12115039, 12115223, 12115399, 12115573, 12115739, 12115921, 12116081, 12116231, 12116413, 12116593, 12116773, 12116953, 12117121, 12117289, 12117473, 12117607]
theorem check21 : primorialChainCheck 4473 primorial4473 184 12114857 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 12114857 12117607 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12114857) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [12117779, 12117949, 12118111, 12118279, 12118453, 12118633, 12118817, 12118969, 12119123, 12119287, 12119447, 12119621, 12119797, 12119959, 12120091, 12120257]
theorem check22 : primorialChainCheck 4473 primorial4473 184 12117607 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 12117607 12120257 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12117607) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [12120431, 12120611, 12120781, 12120947, 12121121, 12121303, 12121481, 12121661, 12121831, 12122009, 12122191, 12122371, 12122549, 12122723, 12122879, 12123053]
theorem check23 : primorialChainCheck 4473 primorial4473 184 12120257 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 12120257 12123053 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12120257) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [12123217, 12123373, 12123557, 12123731, 12123899, 12124081, 12124241, 12124423, 12124591, 12124771, 12124943, 12125101, 12125273, 12125447, 12125609, 12125767]
theorem check24 : primorialChainCheck 4473 primorial4473 184 12123053 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 12123053 12125767 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12123053) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [12125921, 12126097, 12126223, 12126407, 12126571, 12126749, 12126931, 12127109, 12127289, 12127459, 12127637, 12127807, 12127991, 12128173, 12128357, 12128513]
theorem check25 : primorialChainCheck 4473 primorial4473 184 12125767 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 12125767 12128513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12125767) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [12128693, 12128869, 12129031, 12129197, 12129379, 12129539, 12129707, 12129889, 12130073, 12130169, 12130351, 12130523, 12130681, 12130861, 12131027, 12131179]
theorem check26 : primorialChainCheck 4473 primorial4473 184 12128513 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 12128513 12131179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12128513) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [12131347, 12131513, 12131689, 12131849, 12132011, 12132151, 12132331, 12132499, 12132683, 12132859, 12133031, 12133193, 12133367, 12133547, 12133729, 12133897]
theorem check27 : primorialChainCheck 4473 primorial4473 184 12131179 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 12131179 12133897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12131179) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [12134081, 12134251, 12134431, 12134581, 12134743, 12134921, 12135103, 12135287, 12135469, 12135611, 12135763, 12135941, 12136093, 12136273, 12136457, 12136639]
theorem check28 : primorialChainCheck 4473 primorial4473 184 12133897 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 12133897 12136639 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12133897) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [12136783, 12136937, 12137119, 12137299, 12137479, 12137659, 12137843, 12138023, 12138193, 12138353, 12138523, 12138703, 12138869, 12139051, 12139229, 12139409]
theorem check29 : primorialChainCheck 4473 primorial4473 184 12136639 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 12136639 12139409 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12136639) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [12139591, 12139759, 12139943, 12140123, 12140291, 12140461, 12140629, 12140813, 12140977, 12141149, 12141329, 12141509, 12141671, 12141851, 12142019, 12142177]
theorem check30 : primorialChainCheck 4473 primorial4473 184 12139409 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 12139409 12142177 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12139409) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [12142357, 12142541, 12142717, 12142891, 12143069, 12143251, 12143429, 12143591, 12143773, 12143939, 12144113, 12144289, 12144463, 12144637, 12144793, 12144961]
theorem check31 : primorialChainCheck 4473 primorial4473 184 12142177 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 12142177 12144961 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12142177) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 12057499 12063097 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12057499)
    (mid := 12060281) (hi := 12063097) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 12063097 12068447 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12063097)
    (mid := 12065759) (hi := 12068447) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 12068447 12073939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12068447)
    (mid := 12071209) (hi := 12073939) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 12073939 12079433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12073939)
    (mid := 12076703) (hi := 12079433) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 12079433 12084749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12079433)
    (mid := 12082027) (hi := 12084749) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 12084749 12090173 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12084749)
    (mid := 12087463) (hi := 12090173) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 12090173 12095617 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12090173)
    (mid := 12092891) (hi := 12095617) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 12095617 12101153 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12095617)
    (mid := 12098377) (hi := 12101153) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 12101153 12106639 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12101153)
    (mid := 12103967) (hi := 12106639) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 12106639 12112069 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12106639)
    (mid := 12109463) (hi := 12112069) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 12112069 12117607 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12112069)
    (mid := 12114857) (hi := 12117607) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 12117607 12123053 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12117607)
    (mid := 12120257) (hi := 12123053) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 12123053 12128513 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12123053)
    (mid := 12125767) (hi := 12128513) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 12128513 12133897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12128513)
    (mid := 12131179) (hi := 12133897) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 12133897 12139409 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12133897)
    (mid := 12136639) (hi := 12139409) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 12139409 12144961 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12139409)
    (mid := 12142177) (hi := 12144961) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 12057499 12068447 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12057499)
    (mid := 12063097) (hi := 12068447) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 12068447 12079433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12068447)
    (mid := 12073939) (hi := 12079433) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 12079433 12090173 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12079433)
    (mid := 12084749) (hi := 12090173) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 12090173 12101153 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12090173)
    (mid := 12095617) (hi := 12101153) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 12101153 12112069 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12101153)
    (mid := 12106639) (hi := 12112069) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 12112069 12123053 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12112069)
    (mid := 12117607) (hi := 12123053) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 12123053 12133897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12123053)
    (mid := 12128513) (hi := 12133897) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 12133897 12144961 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12133897)
    (mid := 12139409) (hi := 12144961) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 12057499 12079433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12057499)
    (mid := 12068447) (hi := 12079433) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 12079433 12101153 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12079433)
    (mid := 12090173) (hi := 12101153) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 12101153 12123053 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12101153)
    (mid := 12112069) (hi := 12123053) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 12123053 12144961 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12123053)
    (mid := 12133897) (hi := 12144961) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 12057499 12101153 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12057499)
    (mid := 12079433) (hi := 12101153) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 12101153 12144961 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12101153)
    (mid := 12123053) (hi := 12144961) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 12057499 12144961 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12057499)
    (mid := 12101153) (hi := 12144961) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 12057499 12144961 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block137

#print axioms B699MiddleExtension.PrimorialBlocks.Block137.joined
