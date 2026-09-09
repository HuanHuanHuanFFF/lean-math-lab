import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block130

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [11444833, 11444999, 11445179, 11445361, 11445529, 11445689, 11445871, 11446033, 11446207, 11446381, 11446543, 11446717, 11446889, 11447053, 11447213, 11447389]
theorem check0 : primorialChainCheck 4473 primorial4473 184 11444687 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 11444687 11447389 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11444687) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [11447573, 11447753, 11447923, 11448097, 11448263, 11448433, 11448617, 11448797, 11448979, 11449117, 11449301, 11449453, 11449637, 11449807, 11449979, 11450161]
theorem check1 : primorialChainCheck 4473 primorial4473 184 11447389 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 11447389 11450161 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11447389) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [11450321, 11450489, 11450669, 11450839, 11451017, 11451199, 11451383, 11451553, 11451733, 11451911, 11452073, 11452249, 11452433, 11452607, 11452783, 11452949]
theorem check2 : primorialChainCheck 4473 primorial4473 184 11450161 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 11450161 11452949 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11450161) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [11453129, 11453311, 11453489, 11453669, 11453837, 11454013, 11454197, 11454371, 11454551, 11454721, 11454901, 11455061, 11455231, 11455393, 11455571, 11455753]
theorem check3 : primorialChainCheck 4473 primorial4473 184 11452949 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 11452949 11455753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11452949) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [11455937, 11456117, 11456299, 11456477, 11456647, 11456821, 11456993, 11457157, 11457319, 11457499, 11457683, 11457857, 11458039, 11458207, 11458379, 11458549]
theorem check4 : primorialChainCheck 4473 primorial4473 184 11455753 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 11455753 11458549 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11455753) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [11458723, 11458907, 11459087, 11459269, 11459447, 11459627, 11459803, 11459971, 11460143, 11460313, 11460487, 11460671, 11460847, 11461031, 11461207, 11461391]
theorem check5 : primorialChainCheck 4473 primorial4473 184 11458549 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 11458549 11461391 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11458549) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [11461573, 11461741, 11461913, 11462093, 11462251, 11462431, 11462603, 11462779, 11462959, 11463139, 11463311, 11463461, 11463619, 11463799, 11463971, 11464153]
theorem check6 : primorialChainCheck 4473 primorial4473 184 11461391 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 11461391 11464153 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11461391) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [11464337, 11464517, 11464693, 11464861, 11465023, 11465183, 11465351, 11465533, 11465717, 11465897, 11466071, 11466229, 11466409, 11466589, 11466769, 11466947]
theorem check7 : primorialChainCheck 4473 primorial4473 184 11464153 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 11464153 11466947 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11464153) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [11467109, 11467273, 11467457, 11467637, 11467801, 11467969, 11468147, 11468321, 11468503, 11468687, 11468869, 11469047, 11469221, 11469401, 11469583, 11469719]
theorem check8 : primorialChainCheck 4473 primorial4473 184 11466947 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 11466947 11469719 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11466947) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [11469881, 11470057, 11470237, 11470421, 11470579, 11470763, 11470933, 11471099, 11471219, 11471393, 11471569, 11471749, 11471909, 11472091, 11472269, 11472451]
theorem check9 : primorialChainCheck 4473 primorial4473 184 11469719 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 11469719 11472451 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11469719) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [11472623, 11472803, 11472983, 11473157, 11473333, 11473489, 11473661, 11473843, 11474011, 11474191, 11474369, 11474549, 11474731, 11474899, 11475067, 11475251]
theorem check10 : primorialChainCheck 4473 primorial4473 184 11472451 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 11472451 11475251 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11472451) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [11475421, 11475599, 11475773, 11475929, 11476109, 11476291, 11476463, 11476643, 11476807, 11476963, 11477119, 11477293, 11477467, 11477651, 11477819, 11477993]
theorem check11 : primorialChainCheck 4473 primorial4473 184 11475251 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 11475251 11477993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11475251) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [11478161, 11478343, 11478517, 11478697, 11478881, 11479049, 11479219, 11479397, 11479577, 11479759, 11479939, 11480099, 11480251, 11480431, 11480603, 11480773]
theorem check12 : primorialChainCheck 4473 primorial4473 184 11477993 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 11477993 11480773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11477993) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [11480941, 11481121, 11481293, 11481469, 11481641, 11481797, 11481961, 11482087, 11482249, 11482433, 11482613, 11482789, 11482969, 11483123, 11483293, 11483473]
theorem check13 : primorialChainCheck 4473 primorial4473 184 11480773 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 11480773 11483473 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11480773) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [11483639, 11483821, 11483957, 11484119, 11484301, 11484479, 11484661, 11484773, 11484953, 11485127, 11485277, 11485459, 11485631, 11485811, 11485979, 11486159]
theorem check14 : primorialChainCheck 4473 primorial4473 184 11483473 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 11483473 11486159 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11483473) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [11486333, 11486467, 11486641, 11486819, 11486989, 11487163, 11487347, 11487491, 11487653, 11487829, 11488007, 11488187, 11488363, 11488541, 11488717, 11488877]
theorem check15 : primorialChainCheck 4473 primorial4473 184 11486159 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 11486159 11488877 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11486159) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [11489047, 11489221, 11489383, 11489567, 11489749, 11489911, 11490077, 11490253, 11490407, 11490587, 11490767, 11490943, 11491097, 11491243, 11491427, 11491583]
theorem check16 : primorialChainCheck 4473 primorial4473 184 11488877 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 11488877 11491583 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11488877) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [11491763, 11491933, 11492113, 11492291, 11492471, 11492639, 11492809, 11492989, 11493151, 11493331, 11493509, 11493679, 11493851, 11494027, 11494199, 11494381]
theorem check17 : primorialChainCheck 4473 primorial4473 184 11491583 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 11491583 11494381 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11491583) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [11494543, 11494727, 11494909, 11495093, 11495261, 11495443, 11495623, 11495773, 11495951, 11496119, 11496271, 11496451, 11496631, 11496809, 11496983, 11497159]
theorem check18 : primorialChainCheck 4473 primorial4473 184 11494381 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 11494381 11497159 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11494381) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [11497333, 11497513, 11497697, 11497877, 11498029, 11498203, 11498353, 11498537, 11498719, 11498843, 11499013, 11499127, 11499269, 11499437, 11499589, 11499767]
theorem check19 : primorialChainCheck 4473 primorial4473 184 11497159 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 11497159 11499767 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11497159) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [11499949, 11500129, 11500309, 11500471, 11500649, 11500831, 11501003, 11501183, 11501363, 11501543, 11501723, 11501881, 11502059, 11502229, 11502409, 11502583]
theorem check20 : primorialChainCheck 4473 primorial4473 184 11499767 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 11499767 11502583 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11499767) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [11502739, 11502917, 11503099, 11503277, 11503451, 11503627, 11503801, 11503939, 11504093, 11504249, 11504429, 11504609, 11504777, 11504959, 11505121, 11505301]
theorem check21 : primorialChainCheck 4473 primorial4473 184 11502583 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 11502583 11505301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11502583) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [11505463, 11505629, 11505803, 11505973, 11506139, 11506283, 11506447, 11506619, 11506787, 11506933, 11507099, 11507267, 11507449, 11507591, 11507767, 11507927]
theorem check22 : primorialChainCheck 4473 primorial4473 184 11505301 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 11505301 11507927 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11505301) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [11508109, 11508271, 11508449, 11508593, 11508769, 11508943, 11509111, 11509279, 11509457, 11509633, 11509811, 11509973, 11510153, 11510321, 11510503, 11510687]
theorem check23 : primorialChainCheck 4473 primorial4473 184 11507927 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 11507927 11510687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11507927) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [11510861, 11511041, 11511217, 11511391, 11511559, 11511743, 11511923, 11512097, 11512243, 11512427, 11512609, 11512789, 11512973, 11513149, 11513329, 11513507]
theorem check24 : primorialChainCheck 4473 primorial4473 184 11510687 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 11510687 11513507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11510687) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [11513687, 11513863, 11514043, 11514227, 11514407, 11514541, 11514721, 11514901, 11515079, 11515253, 11515429, 11515597, 11515771, 11515949, 11516111, 11516291]
theorem check25 : primorialChainCheck 4473 primorial4473 184 11513507 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 11513507 11516291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11513507) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [11516473, 11516581, 11516759, 11516933, 11517113, 11517293, 11517469, 11517617, 11517791, 11517973, 11518151, 11518327, 11518501, 11518681, 11518853, 11519023]
theorem check26 : primorialChainCheck 4473 primorial4473 184 11516291 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 11516291 11519023 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11516291) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [11519201, 11519381, 11519549, 11519723, 11519899, 11520083, 11520227, 11520409, 11520581, 11520763, 11520941, 11521051, 11521199, 11521379, 11521561, 11521717]
theorem check27 : primorialChainCheck 4473 primorial4473 184 11519023 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 11519023 11521717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11519023) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [11521897, 11522053, 11522219, 11522363, 11522543, 11522711, 11522887, 11523067, 11523247, 11523431, 11523593, 11523767, 11523931, 11524111, 11524273, 11524439]
theorem check28 : primorialChainCheck 4473 primorial4473 184 11521717 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 11521717 11524439 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11521717) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [11524619, 11524801, 11524969, 11525117, 11525281, 11525447, 11525623, 11525791, 11525959, 11526143, 11526313, 11526497, 11526679, 11526857, 11527031, 11527213]
theorem check29 : primorialChainCheck 4473 primorial4473 184 11524439 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 11524439 11527213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11524439) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [11527391, 11527573, 11527729, 11527907, 11528059, 11528213, 11528371, 11528537, 11528701, 11528879, 11529041, 11529223, 11529403, 11529563, 11529743, 11529901]
theorem check30 : primorialChainCheck 4473 primorial4473 184 11527213 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 11527213 11529901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11527213) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [11530069, 11530249, 11530433, 11530591, 11530741, 11530921, 11531099, 11531269, 11531449, 11531621, 11531801, 11531977, 11532161, 11532337, 11532481, 11532659]
theorem check31 : primorialChainCheck 4473 primorial4473 184 11529901 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 11529901 11532659 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11529901) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 11444687 11450161 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11444687)
    (mid := 11447389) (hi := 11450161) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 11450161 11455753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11450161)
    (mid := 11452949) (hi := 11455753) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 11455753 11461391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11455753)
    (mid := 11458549) (hi := 11461391) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 11461391 11466947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11461391)
    (mid := 11464153) (hi := 11466947) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 11466947 11472451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11466947)
    (mid := 11469719) (hi := 11472451) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 11472451 11477993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11472451)
    (mid := 11475251) (hi := 11477993) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 11477993 11483473 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11477993)
    (mid := 11480773) (hi := 11483473) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 11483473 11488877 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11483473)
    (mid := 11486159) (hi := 11488877) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 11488877 11494381 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11488877)
    (mid := 11491583) (hi := 11494381) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 11494381 11499767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11494381)
    (mid := 11497159) (hi := 11499767) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 11499767 11505301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11499767)
    (mid := 11502583) (hi := 11505301) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 11505301 11510687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11505301)
    (mid := 11507927) (hi := 11510687) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 11510687 11516291 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11510687)
    (mid := 11513507) (hi := 11516291) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 11516291 11521717 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11516291)
    (mid := 11519023) (hi := 11521717) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 11521717 11527213 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11521717)
    (mid := 11524439) (hi := 11527213) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 11527213 11532659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11527213)
    (mid := 11529901) (hi := 11532659) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 11444687 11455753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11444687)
    (mid := 11450161) (hi := 11455753) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 11455753 11466947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11455753)
    (mid := 11461391) (hi := 11466947) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 11466947 11477993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11466947)
    (mid := 11472451) (hi := 11477993) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 11477993 11488877 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11477993)
    (mid := 11483473) (hi := 11488877) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 11488877 11499767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11488877)
    (mid := 11494381) (hi := 11499767) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 11499767 11510687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11499767)
    (mid := 11505301) (hi := 11510687) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 11510687 11521717 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11510687)
    (mid := 11516291) (hi := 11521717) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 11521717 11532659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11521717)
    (mid := 11527213) (hi := 11532659) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 11444687 11466947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11444687)
    (mid := 11455753) (hi := 11466947) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 11466947 11488877 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11466947)
    (mid := 11477993) (hi := 11488877) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 11488877 11510687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11488877)
    (mid := 11499767) (hi := 11510687) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 11510687 11532659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11510687)
    (mid := 11521717) (hi := 11532659) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 11444687 11488877 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11444687)
    (mid := 11466947) (hi := 11488877) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 11488877 11532659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11488877)
    (mid := 11510687) (hi := 11532659) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 11444687 11532659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11444687)
    (mid := 11488877) (hi := 11532659) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 11444687 11532659 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block130

#print axioms B699MiddleExtension.PrimorialBlocks.Block130.joined
