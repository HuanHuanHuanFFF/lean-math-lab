import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block146

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [12845513, 12845683, 12845849, 12846019, 12846199, 12846377, 12846541, 12846709, 12846893, 12847069, 12847201, 12847381, 12847559, 12847741, 12847921, 12848093]
theorem check0 : primorialChainCheck 4473 primorial4473 184 12845351 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 12845351 12848093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12845351) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [12848273, 12848431, 12848609, 12848777, 12848951, 12849121, 12849293, 12849451, 12849623, 12849799, 12849973, 12850153, 12850291, 12850459, 12850639, 12850811]
theorem check1 : primorialChainCheck 4473 primorial4473 184 12848093 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 12848093 12850811 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12848093) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [12850979, 12851161, 12851339, 12851513, 12851681, 12851851, 12852001, 12852179, 12852361, 12852509, 12852673, 12852841, 12853019, 12853199, 12853363, 12853531]
theorem check2 : primorialChainCheck 4473 primorial4473 184 12850811 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 12850811 12853531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12850811) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [12853703, 12853877, 12854041, 12854209, 12854383, 12854561, 12854741, 12854921, 12855103, 12855287, 12855463, 12855617, 12855797, 12855977, 12856153, 12856321]
theorem check3 : primorialChainCheck 4473 primorial4473 184 12853531 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 12853531 12856321 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12853531) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [12856499, 12856681, 12856861, 12857021, 12857147, 12857297, 12857443, 12857609, 12857791, 12857953, 12858091, 12858271, 12858437, 12858607, 12858787, 12858971]
theorem check4 : primorialChainCheck 4473 primorial4473 184 12856321 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 12856321 12858971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12856321) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [12859127, 12859303, 12859487, 12859661, 12859841, 12859997, 12860179, 12860363, 12860539, 12860723, 12860899, 12861059, 12861241, 12861421, 12861599, 12861769]
theorem check5 : primorialChainCheck 4473 primorial4473 184 12858971 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 12858971 12861769 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12858971) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [12861949, 12862133, 12862309, 12862483, 12862657, 12862831, 12862963, 12863117, 12863297, 12863479, 12863657, 12863839, 12864013, 12864191, 12864373, 12864541]
theorem check6 : primorialChainCheck 4473 primorial4473 184 12861769 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 12861769 12864541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12861769) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [12864707, 12864877, 12865057, 12865199, 12865373, 12865553, 12865711, 12865883, 12866041, 12866219, 12866393, 12866573, 12866753, 12866929, 12867103, 12867269]
theorem check7 : primorialChainCheck 4473 primorial4473 184 12864541 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 12864541 12867269 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12864541) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [12867443, 12867611, 12867791, 12867941, 12868123, 12868307, 12868487, 12868657, 12868841, 12868991, 12869173, 12869347, 12869509, 12869671, 12869851, 12870031]
theorem check8 : primorialChainCheck 4473 primorial4473 184 12867269 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 12867269 12870031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12867269) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [12870203, 12870371, 12870553, 12870721, 12870899, 12871081, 12871259, 12871429, 12871613, 12871787, 12871933, 12872117, 12872287, 12872449, 12872627, 12872809]
theorem check9 : primorialChainCheck 4473 primorial4473 184 12870031 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 12870031 12872809 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12870031) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [12872987, 12873163, 12873337, 12873517, 12873691, 12873871, 12874051, 12874223, 12874403, 12874583, 12874751, 12874903, 12875081, 12875251, 12875419, 12875557]
theorem check10 : primorialChainCheck 4473 primorial4473 184 12872809 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 12872809 12875557 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12872809) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [12875689, 12875869, 12876047, 12876229, 12876401, 12876581, 12876739, 12876923, 12877097, 12877261, 12877433, 12877603, 12877757, 12877897, 12878081, 12878227]
theorem check11 : primorialChainCheck 4473 primorial4473 184 12875557 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 12875557 12878227 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12875557) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [12878377, 12878531, 12878699, 12878881, 12879049, 12879221, 12879389, 12879569, 12879749, 12879913, 12880093, 12880277, 12880457, 12880589, 12880741, 12880919]
theorem check12 : primorialChainCheck 4473 primorial4473 184 12878227 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 12878227 12880919 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12878227) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [12881051, 12881207, 12881387, 12881551, 12881719, 12881899, 12882083, 12882251, 12882433, 12882607, 12882781, 12882953, 12883133, 12883313, 12883487, 12883643]
theorem check13 : primorialChainCheck 4473 primorial4473 184 12880919 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 12880919 12883643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12880919) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [12883813, 12883951, 12884129, 12884309, 12884471, 12884629, 12884813, 12884959, 12885121, 12885289, 12885469, 12885623, 12885799, 12885959, 12886129, 12886301]
theorem check14 : primorialChainCheck 4473 primorial4473 184 12883643 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 12883643 12886301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12883643) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [12886477, 12886661, 12886843, 12887027, 12887197, 12887341, 12887519, 12887657, 12887827, 12887993, 12888163, 12888319, 12888503, 12888677, 12888853, 12889033]
theorem check15 : primorialChainCheck 4473 primorial4473 184 12886301 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 12886301 12889033 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12886301) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [12889187, 12889351, 12889531, 12889691, 12889853, 12890027, 12890209, 12890387, 12890567, 12890729, 12890909, 12891061, 12891233, 12891409, 12891587, 12891761]
theorem check16 : primorialChainCheck 4473 primorial4473 184 12889033 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 12889033 12891761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12889033) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [12891941, 12892093, 12892261, 12892441, 12892601, 12892771, 12892937, 12893099, 12893281, 12893459, 12893627, 12893809, 12893983, 12894139, 12894269, 12894443]
theorem check17 : primorialChainCheck 4473 primorial4473 184 12891761 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 12891761 12894443 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12891761) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [12894599, 12894781, 12894941, 12895123, 12895307, 12895481, 12895637, 12895819, 12895999, 12896171, 12896347, 12896519, 12896669, 12896833, 12897013, 12897197]
theorem check18 : primorialChainCheck 4473 primorial4473 184 12894443 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 12894443 12897197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12894443) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [12897361, 12897541, 12897697, 12897869, 12898051, 12898229, 12898399, 12898553, 12898729, 12898901, 12899083, 12899267, 12899449, 12899633, 12899807, 12899977]
theorem check19 : primorialChainCheck 4473 primorial4473 184 12897197 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 12897197 12899977 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12897197) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [12900149, 12900323, 12900491, 12900661, 12900821, 12901001, 12901169, 12901337, 12901519, 12901699, 12901879, 12902053, 12902237, 12902401, 12902579, 12902761]
theorem check20 : primorialChainCheck 4473 primorial4473 184 12899977 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 12899977 12902761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12899977) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [12902891, 12903067, 12903227, 12903383, 12903563, 12903739, 12903911, 12904079, 12904253, 12904399, 12904537, 12904693, 12904861, 12905041, 12905219, 12905381]
theorem check21 : primorialChainCheck 4473 primorial4473 184 12902761 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 12902761 12905381 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12902761) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [12905549, 12905723, 12905903, 12906067, 12906241, 12906419, 12906589, 12906767, 12906937, 12907121, 12907283, 12907457, 12907627, 12907801, 12907969, 12908143]
theorem check22 : primorialChainCheck 4473 primorial4473 184 12905381 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 12905381 12908143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12905381) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [12908323, 12908453, 12908633, 12908807, 12908983, 12909163, 12909343, 12909527, 12909709, 12909893, 12910067, 12910243, 12910421, 12910591, 12910757, 12910927]
theorem check23 : primorialChainCheck 4473 primorial4473 184 12908143 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 12908143 12910927 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12908143) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [12911099, 12911281, 12911453, 12911623, 12911777, 12911957, 12912139, 12912311, 12912479, 12912659, 12912773, 12912953, 12913133, 12913289, 12913471, 12913651]
theorem check24 : primorialChainCheck 4473 primorial4473 184 12910927 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 12910927 12913651 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12910927) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [12913819, 12913991, 12914173, 12914347, 12914527, 12914659, 12914833, 12915013, 12915197, 12915377, 12915559, 12915709, 12915883, 12916063, 12916247, 12916427]
theorem check25 : primorialChainCheck 4473 primorial4473 184 12913651 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 12913651 12916427 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12913651) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [12916559, 12916741, 12916907, 12917089, 12917273, 12917453, 12917633, 12917813, 12917987, 12918161, 12918329, 12918511, 12918683, 12918853, 12919021, 12919189]
theorem check26 : primorialChainCheck 4473 primorial4473 184 12916427 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 12916427 12919189 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12916427) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [12919367, 12919523, 12919693, 12919871, 12920023, 12920203, 12920381, 12920563, 12920737, 12920909, 12921091, 12921263, 12921407, 12921589, 12921763, 12921943]
theorem check27 : primorialChainCheck 4473 primorial4473 184 12919189 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 12919189 12921943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12919189) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [12922111, 12922289, 12922471, 12922633, 12922817, 12922993, 12923153, 12923333, 12923509, 12923671, 12923849, 12924031, 12924203, 12924347, 12924529, 12924713]
theorem check28 : primorialChainCheck 4473 primorial4473 184 12921943 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 12921943 12924713 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12921943) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [12924889, 12925067, 12925223, 12925369, 12925531, 12925709, 12925883, 12926033, 12926203, 12926383, 12926567, 12926747, 12926929, 12927113, 12927281, 12927461]
theorem check29 : primorialChainCheck 4473 primorial4473 184 12924713 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 12924713 12927461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12924713) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [12927641, 12927799, 12927983, 12928141, 12928301, 12928481, 12928637, 12928819, 12928999, 12929173, 12929353, 12929533, 12929711, 12929879, 12930059, 12930221]
theorem check30 : primorialChainCheck 4473 primorial4473 184 12927461 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 12927461 12930221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12927461) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [12930403, 12930581, 12930739, 12930923, 12931103, 12931253, 12931427, 12931601, 12931783, 12931937, 12932119, 12932303, 12932471, 12932641, 12932819, 12932957]
theorem check31 : primorialChainCheck 4473 primorial4473 184 12930221 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 12930221 12932957 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12930221) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 12845351 12850811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12845351)
    (mid := 12848093) (hi := 12850811) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 12850811 12856321 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12850811)
    (mid := 12853531) (hi := 12856321) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 12856321 12861769 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12856321)
    (mid := 12858971) (hi := 12861769) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 12861769 12867269 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12861769)
    (mid := 12864541) (hi := 12867269) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 12867269 12872809 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12867269)
    (mid := 12870031) (hi := 12872809) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 12872809 12878227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12872809)
    (mid := 12875557) (hi := 12878227) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 12878227 12883643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12878227)
    (mid := 12880919) (hi := 12883643) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 12883643 12889033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12883643)
    (mid := 12886301) (hi := 12889033) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 12889033 12894443 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12889033)
    (mid := 12891761) (hi := 12894443) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 12894443 12899977 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12894443)
    (mid := 12897197) (hi := 12899977) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 12899977 12905381 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12899977)
    (mid := 12902761) (hi := 12905381) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 12905381 12910927 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12905381)
    (mid := 12908143) (hi := 12910927) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 12910927 12916427 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12910927)
    (mid := 12913651) (hi := 12916427) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 12916427 12921943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12916427)
    (mid := 12919189) (hi := 12921943) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 12921943 12927461 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12921943)
    (mid := 12924713) (hi := 12927461) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 12927461 12932957 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12927461)
    (mid := 12930221) (hi := 12932957) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 12845351 12856321 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12845351)
    (mid := 12850811) (hi := 12856321) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 12856321 12867269 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12856321)
    (mid := 12861769) (hi := 12867269) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 12867269 12878227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12867269)
    (mid := 12872809) (hi := 12878227) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 12878227 12889033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12878227)
    (mid := 12883643) (hi := 12889033) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 12889033 12899977 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12889033)
    (mid := 12894443) (hi := 12899977) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 12899977 12910927 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12899977)
    (mid := 12905381) (hi := 12910927) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 12910927 12921943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12910927)
    (mid := 12916427) (hi := 12921943) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 12921943 12932957 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12921943)
    (mid := 12927461) (hi := 12932957) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 12845351 12867269 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12845351)
    (mid := 12856321) (hi := 12867269) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 12867269 12889033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12867269)
    (mid := 12878227) (hi := 12889033) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 12889033 12910927 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12889033)
    (mid := 12899977) (hi := 12910927) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 12910927 12932957 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12910927)
    (mid := 12921943) (hi := 12932957) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 12845351 12889033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12845351)
    (mid := 12867269) (hi := 12889033) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 12889033 12932957 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12889033)
    (mid := 12910927) (hi := 12932957) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 12845351 12932957 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12845351)
    (mid := 12889033) (hi := 12932957) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 12845351 12932957 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block146

#print axioms B699MiddleExtension.PrimorialBlocks.Block146.joined
