import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block138

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [12145103, 12145279, 12145457, 12145607, 12145781, 12145937, 12146117, 12146297, 12146479, 12146647, 12146819, 12147001, 12147173, 12147353, 12147533, 12147713]
theorem check0 : primorialChainCheck 4473 primorial4473 184 12144961 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 12144961 12147713 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12144961) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [12147871, 12148033, 12148207, 12148369, 12148537, 12148711, 12148891, 12149069, 12149233, 12149411, 12149587, 12149771, 12149947, 12150107, 12150289, 12150451]
theorem check1 : primorialChainCheck 4473 primorial4473 184 12147713 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 12147713 12150451 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12147713) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [12150617, 12150799, 12150967, 12151147, 12151297, 12151471, 12151639, 12151823, 12151987, 12152167, 12152351, 12152513, 12152689, 12152873, 12153041, 12153221]
theorem check2 : primorialChainCheck 4473 primorial4473 184 12150451 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 12150451 12153221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12150451) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [12153397, 12153571, 12153737, 12153919, 12154073, 12154231, 12154399, 12154559, 12154739, 12154913, 12155081, 12155257, 12155419, 12155587, 12155771, 12155951]
theorem check3 : primorialChainCheck 4473 primorial4473 184 12153221 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 12153221 12155951 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12153221) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [12156119, 12156299, 12156467, 12156643, 12156799, 12156983, 12157153, 12157337, 12157469, 12157637, 12157801, 12157973, 12158149, 12158327, 12158507, 12158669]
theorem check4 : primorialChainCheck 4473 primorial4473 184 12155951 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 12155951 12158669 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12155951) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [12158849, 12159013, 12159187, 12159359, 12159541, 12159703, 12159881, 12160061, 12160243, 12160403, 12160573, 12160751, 12160927, 12161099, 12161251, 12161431]
theorem check5 : primorialChainCheck 4473 primorial4473 184 12158669 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 12158669 12161431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12158669) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [12161599, 12161777, 12161927, 12162103, 12162263, 12162407, 12162589, 12162743, 12162923, 12163103, 12163259, 12163423, 12163603, 12163769, 12163951, 12164101]
theorem check6 : primorialChainCheck 4473 primorial4473 184 12161431 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 12161431 12164101 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12161431) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [12164279, 12164461, 12164629, 12164813, 12164993, 12165161, 12165343, 12165497, 12165679, 12165851, 12166027, 12166207, 12166387, 12166547, 12166729, 12166909]
theorem check7 : primorialChainCheck 4473 primorial4473 184 12164101 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 12164101 12166909 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12164101) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [12167063, 12167227, 12167399, 12167579, 12167741, 12167917, 12168077, 12168257, 12168437, 12168577, 12168757, 12168929, 12169111, 12169279, 12169463, 12169631]
theorem check8 : primorialChainCheck 4473 primorial4473 184 12166909 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 12166909 12169631 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12166909) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [12169727, 12169891, 12170063, 12170239, 12170407, 12170573, 12170713, 12170869, 12171041, 12171199, 12171361, 12171539, 12171721, 12171893, 12172049, 12172219]
theorem check9 : primorialChainCheck 4473 primorial4473 184 12169631 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 12169631 12172219 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12169631) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [12172393, 12172549, 12172729, 12172907, 12173087, 12173263, 12173419, 12173599, 12173779, 12173951, 12174131, 12174313, 12174493, 12174667, 12174829, 12175003]
theorem check10 : primorialChainCheck 4473 primorial4473 184 12172219 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 12172219 12175003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12172219) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [12175171, 12175351, 12175517, 12175699, 12175879, 12175987, 12176161, 12176341, 12176477, 12176657, 12176837, 12177019, 12177173, 12177353, 12177523, 12177701]
theorem check11 : primorialChainCheck 4473 primorial4473 184 12175003 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 12175003 12177701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12175003) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [12177881, 12178051, 12178213, 12178391, 12178571, 12178729, 12178913, 12179087, 12179261, 12179407, 12179567, 12179749, 12179929, 12180101, 12180283, 12180461]
theorem check12 : primorialChainCheck 4473 primorial4473 184 12177701 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 12177701 12180461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12177701) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [12180631, 12180803, 12180983, 12181157, 12181339, 12181523, 12181699, 12181867, 12182041, 12182189, 12182369, 12182551, 12182719, 12182903, 12183053, 12183229]
theorem check13 : primorialChainCheck 4473 primorial4473 184 12180461 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 12180461 12183229 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12180461) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [12183401, 12183571, 12183733, 12183907, 12184069, 12184247, 12184429, 12184607, 12184789, 12184967, 12185123, 12185293, 12185477, 12185647, 12185809, 12185981]
theorem check14 : primorialChainCheck 4473 primorial4473 184 12183229 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 12183229 12185981 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12183229) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [12186151, 12186323, 12186479, 12186659, 12186833, 12187013, 12187183, 12187349, 12187507, 12187687, 12187871, 12188027, 12188191, 12188347, 12188513, 12188681]
theorem check15 : primorialChainCheck 4473 primorial4473 184 12185981 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 12185981 12188681 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12185981) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [12188863, 12189043, 12189181, 12189349, 12189533, 12189703, 12189871, 12190043, 12190219, 12190379, 12190561, 12190709, 12190891, 12191051, 12191233, 12191381]
theorem check16 : primorialChainCheck 4473 primorial4473 184 12188681 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 12188681 12191381 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12188681) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [12191563, 12191741, 12191917, 12192101, 12192239, 12192421, 12192601, 12192769, 12192953, 12193133, 12193309, 12193487, 12193669, 12193823, 12194003, 12194183]
theorem check17 : primorialChainCheck 4473 primorial4473 184 12191381 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 12191381 12194183 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12191381) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [12194353, 12194537, 12194711, 12194881, 12195049, 12195233, 12195413, 12195593, 12195767, 12195947, 12196109, 12196253, 12196427, 12196603, 12196783, 12196957]
theorem check18 : primorialChainCheck 4473 primorial4473 184 12194183 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 12194183 12196957 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12194183) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [12197123, 12197281, 12197443, 12197617, 12197749, 12197921, 12198083, 12198259, 12198421, 12198583, 12198761, 12198941, 12199097, 12199279, 12199457, 12199609]
theorem check19 : primorialChainCheck 4473 primorial4473 184 12196957 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 12196957 12199609 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12196957) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [12199783, 12199951, 12200129, 12200303, 12200483, 12200651, 12200827, 12200989, 12201151, 12201331, 12201509, 12201677, 12201859, 12202037, 12202219, 12202381]
theorem check20 : primorialChainCheck 4473 primorial4473 184 12199609 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 12199609 12202381 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12199609) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [12202529, 12202709, 12202873, 12203053, 12203237, 12203419, 12203561, 12203699, 12203881, 12204047, 12204229, 12204397, 12204581, 12204763, 12204889, 12205073]
theorem check21 : primorialChainCheck 4473 primorial4473 184 12202381 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 12202381 12205073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12202381) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [12205253, 12205393, 12205573, 12205757, 12205933, 12206101, 12206273, 12206437, 12206609, 12206791, 12206939, 12207121, 12207301, 12207473, 12207653, 12207821]
theorem check22 : primorialChainCheck 4473 primorial4473 184 12205073 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 12205073 12207821 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12205073) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [12207977, 12208153, 12208321, 12208489, 12208667, 12208843, 12209023, 12209207, 12209387, 12209563, 12209737, 12209921, 12210101, 12210283, 12210467, 12210619]
theorem check23 : primorialChainCheck 4473 primorial4473 184 12207821 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 12207821 12210619 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12207821) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [12210791, 12210973, 12211141, 12211307, 12211483, 12211657, 12211841, 12212021, 12212201, 12212377, 12212561, 12212743, 12212917, 12213079, 12213251, 12213403]
theorem check24 : primorialChainCheck 4473 primorial4473 184 12210619 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 12210619 12213403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12210619) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [12213587, 12213739, 12213923, 12214099, 12214273, 12214441, 12214613, 12214793, 12214973, 12215149, 12215327, 12215477, 12215657, 12215831, 12215971, 12216137]
theorem check25 : primorialChainCheck 4473 primorial4473 184 12213403 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 12213403 12216137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12213403) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [12216313, 12216497, 12216671, 12216839, 12216991, 12217159, 12217333, 12217481, 12217657, 12217811, 12217993, 12218153, 12218333, 12218509, 12218663, 12218821]
theorem check26 : primorialChainCheck 4473 primorial4473 184 12216137 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 12216137 12218821 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12216137) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [12218989, 12219169, 12219349, 12219533, 12219709, 12219871, 12220037, 12220217, 12220393, 12220573, 12220757, 12220937, 12221117, 12221273, 12221449, 12221611]
theorem check27 : primorialChainCheck 4473 primorial4473 184 12218821 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 12218821 12221611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12218821) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [12221771, 12221917, 12222101, 12222283, 12222461, 12222641, 12222823, 12222989, 12223139, 12223313, 12223483, 12223657, 12223831, 12223987, 12224159, 12224327]
theorem check28 : primorialChainCheck 4473 primorial4473 184 12221611 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 12221611 12224327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12221611) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [12224501, 12224669, 12224843, 12224981, 12225149, 12225299, 12225463, 12225643, 12225823, 12225991, 12226127, 12226309, 12226477, 12226649, 12226831, 12226999]
theorem check29 : primorialChainCheck 4473 primorial4473 184 12224327 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 12224327 12226999 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12224327) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [12227177, 12227359, 12227533, 12227711, 12227893, 12228061, 12228239, 12228421, 12228599, 12228781, 12228929, 12229093, 12229267, 12229429, 12229601, 12229769]
theorem check30 : primorialChainCheck 4473 primorial4473 184 12226999 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 12226999 12229769 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12226999) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [12229927, 12230111, 12230233, 12230417, 12230597, 12230731, 12230903, 12231083, 12231259, 12231433, 12231613, 12231767, 12231943, 12232117, 12232289, 12232471]
theorem check31 : primorialChainCheck 4473 primorial4473 184 12229769 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 12229769 12232471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12229769) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 12144961 12150451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12144961)
    (mid := 12147713) (hi := 12150451) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 12150451 12155951 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12150451)
    (mid := 12153221) (hi := 12155951) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 12155951 12161431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12155951)
    (mid := 12158669) (hi := 12161431) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 12161431 12166909 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12161431)
    (mid := 12164101) (hi := 12166909) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 12166909 12172219 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12166909)
    (mid := 12169631) (hi := 12172219) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 12172219 12177701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12172219)
    (mid := 12175003) (hi := 12177701) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 12177701 12183229 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12177701)
    (mid := 12180461) (hi := 12183229) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 12183229 12188681 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12183229)
    (mid := 12185981) (hi := 12188681) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 12188681 12194183 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12188681)
    (mid := 12191381) (hi := 12194183) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 12194183 12199609 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12194183)
    (mid := 12196957) (hi := 12199609) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 12199609 12205073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12199609)
    (mid := 12202381) (hi := 12205073) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 12205073 12210619 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12205073)
    (mid := 12207821) (hi := 12210619) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 12210619 12216137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12210619)
    (mid := 12213403) (hi := 12216137) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 12216137 12221611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12216137)
    (mid := 12218821) (hi := 12221611) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 12221611 12226999 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12221611)
    (mid := 12224327) (hi := 12226999) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 12226999 12232471 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12226999)
    (mid := 12229769) (hi := 12232471) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 12144961 12155951 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12144961)
    (mid := 12150451) (hi := 12155951) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 12155951 12166909 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12155951)
    (mid := 12161431) (hi := 12166909) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 12166909 12177701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12166909)
    (mid := 12172219) (hi := 12177701) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 12177701 12188681 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12177701)
    (mid := 12183229) (hi := 12188681) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 12188681 12199609 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12188681)
    (mid := 12194183) (hi := 12199609) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 12199609 12210619 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12199609)
    (mid := 12205073) (hi := 12210619) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 12210619 12221611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12210619)
    (mid := 12216137) (hi := 12221611) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 12221611 12232471 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12221611)
    (mid := 12226999) (hi := 12232471) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 12144961 12166909 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12144961)
    (mid := 12155951) (hi := 12166909) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 12166909 12188681 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12166909)
    (mid := 12177701) (hi := 12188681) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 12188681 12210619 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12188681)
    (mid := 12199609) (hi := 12210619) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 12210619 12232471 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12210619)
    (mid := 12221611) (hi := 12232471) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 12144961 12188681 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12144961)
    (mid := 12166909) (hi := 12188681) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 12188681 12232471 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12188681)
    (mid := 12210619) (hi := 12232471) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 12144961 12232471 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12144961)
    (mid := 12188681) (hi := 12232471) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 12144961 12232471 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block138

#print axioms B699MiddleExtension.PrimorialBlocks.Block138.joined
