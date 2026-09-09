import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block214

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [18789223, 18789391, 18789571, 18789739, 18789923, 18790091, 18790243, 18790427, 18790589, 18790757, 18790939, 18791107, 18791281, 18791459, 18791639, 18791821]
theorem check0 : primorialChainCheck 4473 primorial4473 184 18789059 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 18789059 18791821 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18789059) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [18791999, 18792143, 18792289, 18792469, 18792647, 18792827, 18792971, 18793133, 18793297, 18793469, 18793651, 18793813, 18793987, 18794159, 18794341, 18794491]
theorem check1 : primorialChainCheck 4473 primorial4473 184 18791821 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 18791821 18794491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18791821) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [18794669, 18794849, 18795031, 18795157, 18795341, 18795521, 18795701, 18795871, 18796051, 18796229, 18796399, 18796579, 18796763, 18796937, 18797117, 18797297]
theorem check2 : primorialChainCheck 4473 primorial4473 184 18794491 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 18794491 18797297 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18794491) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [18797447, 18797629, 18797797, 18797981, 18798161, 18798343, 18798523, 18798707, 18798881, 18799063, 18799247, 18799427, 18799601, 18799769, 18799951, 18800087]
theorem check3 : primorialChainCheck 4473 primorial4473 184 18797297 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 18797297 18800087 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18797297) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [18800251, 18800393, 18800569, 18800753, 18800927, 18801109, 18801287, 18801451, 18801631, 18801791, 18801961, 18802141, 18802319, 18802501, 18802681, 18802853]
theorem check4 : primorialChainCheck 4473 primorial4473 184 18800087 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 18800087 18802853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18800087) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [18803033, 18803201, 18803383, 18803531, 18803693, 18803849, 18804031, 18804173, 18804349, 18804521, 18804697, 18804871, 18805049, 18805229, 18805403, 18805547]
theorem check5 : primorialChainCheck 4473 primorial4473 184 18802853 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 18802853 18805547 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18802853) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [18805729, 18805907, 18806077, 18806261, 18806419, 18806603, 18806779, 18806951, 18807133, 18807317, 18807499, 18807667, 18807847, 18808021, 18808199, 18808373]
theorem check6 : primorialChainCheck 4473 primorial4473 184 18805547 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 18805547 18808373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18805547) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [18808541, 18808721, 18808901, 18809083, 18809257, 18809419, 18809597, 18809779, 18809941, 18810119, 18810287, 18810461, 18810643, 18810797, 18810977, 18811153]
theorem check7 : primorialChainCheck 4473 primorial4473 184 18808373 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 18808373 18811153 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18808373) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [18811337, 18811477, 18811649, 18811831, 18811997, 18812177, 18812359, 18812533, 18812711, 18812867, 18813043, 18813217, 18813391, 18813541, 18813689, 18813863]
theorem check8 : primorialChainCheck 4473 primorial4473 184 18811153 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 18811153 18813863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18811153) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [18814031, 18814193, 18814339, 18814513, 18814681, 18814849, 18815029, 18815207, 18815387, 18815569, 18815747, 18815921, 18816097, 18816269, 18816449, 18816619]
theorem check9 : primorialChainCheck 4473 primorial4473 184 18813863 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 18813863 18816619 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18813863) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [18816793, 18816923, 18817103, 18817231, 18817397, 18817577, 18817751, 18817921, 18818083, 18818257, 18818431, 18818603, 18818773, 18818939, 18819107, 18819277]
theorem check10 : primorialChainCheck 4473 primorial4473 184 18816619 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 18816619 18819277 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18816619) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [18819461, 18819631, 18819809, 18819991, 18820169, 18820331, 18820493, 18820673, 18820847, 18821027, 18821161, 18821323, 18821497, 18821657, 18821821, 18821983]
theorem check11 : primorialChainCheck 4473 primorial4473 184 18819277 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 18819277 18821983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18819277) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [18822163, 18822337, 18822497, 18822659, 18822821, 18822959, 18823127, 18823303, 18823477, 18823657, 18823841, 18823969, 18824149, 18824329, 18824513, 18824671]
theorem check12 : primorialChainCheck 4473 primorial4473 184 18821983 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 18821983 18824671 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18821983) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [18824851, 18825007, 18825173, 18825353, 18825509, 18825691, 18825871, 18826039, 18826211, 18826391, 18826553, 18826729, 18826901, 18827063, 18827239, 18827407]
theorem check13 : primorialChainCheck 4473 primorial4473 184 18824671 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 18824671 18827407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18824671) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [18827591, 18827759, 18827933, 18828097, 18828239, 18828391, 18828547, 18828721, 18828889, 18829073, 18829253, 18829409, 18829583, 18829763, 18829919, 18830099]
theorem check14 : primorialChainCheck 4473 primorial4473 184 18827407 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 18827407 18830099 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18827407) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [18830281, 18830453, 18830633, 18830809, 18830989, 18831139, 18831317, 18831497, 18831671, 18831851, 18832031, 18832213, 18832391, 18832547, 18832669, 18832813]
theorem check15 : primorialChainCheck 4473 primorial4473 184 18830099 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 18830099 18832813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18830099) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [18832997, 18833149, 18833329, 18833513, 18833681, 18833863, 18834037, 18834197, 18834373, 18834553, 18834721, 18834901, 18835081, 18835261, 18835409, 18835571]
theorem check16 : primorialChainCheck 4473 primorial4473 184 18832813 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 18832813 18835571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18832813) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [18835741, 18835913, 18836093, 18836249, 18836423, 18836593, 18836773, 18836957, 18837121, 18837293, 18837463, 18837613, 18837779, 18837961, 18838129, 18838301]
theorem check17 : primorialChainCheck 4473 primorial4473 184 18835571 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 18835571 18838301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18835571) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [18838451, 18838613, 18838789, 18838973, 18839153, 18839333, 18839489, 18839603, 18839759, 18839941, 18840121, 18840271, 18840449, 18840629, 18840803, 18840967]
theorem check18 : primorialChainCheck 4473 primorial4473 184 18838301 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 18838301 18840967 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18838301) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [18841133, 18841307, 18841451, 18841633, 18841789, 18841973, 18842149, 18842323, 18842501, 18842651, 18842827, 18842981, 18843137, 18843311, 18843457, 18843607]
theorem check19 : primorialChainCheck 4473 primorial4473 184 18840967 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 18840967 18843607 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18840967) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [18843733, 18843911, 18844087, 18844207, 18844391, 18844549, 18844723, 18844873, 18845011, 18845191, 18845357, 18845531, 18845713, 18845851, 18846031, 18846211]
theorem check20 : primorialChainCheck 4473 primorial4473 184 18843607 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 18843607 18846211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18843607) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [18846391, 18846539, 18846721, 18846889, 18847061, 18847229, 18847403, 18847573, 18847739, 18847919, 18848101, 18848251, 18848413, 18848581, 18848759, 18848941]
theorem check21 : primorialChainCheck 4473 primorial4473 184 18846211 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 18846211 18848941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18846211) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [18849097, 18849253, 18849431, 18849601, 18849763, 18849899, 18850067, 18850231, 18850411, 18850589, 18850771, 18850933, 18851111, 18851279, 18851407, 18851563]
theorem check22 : primorialChainCheck 4473 primorial4473 184 18848941 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 18848941 18851563 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18848941) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [18851737, 18851909, 18852083, 18852221, 18852401, 18852583, 18852737, 18852917, 18853099, 18853279, 18853463, 18853633, 18853811, 18853963, 18854141, 18854317]
theorem check23 : primorialChainCheck 4473 primorial4473 184 18851563 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 18851563 18854317 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18851563) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [18854501, 18854681, 18854863, 18855047, 18855209, 18855379, 18855559, 18855731, 18855911, 18856087, 18856267, 18856391, 18856549, 18856727, 18856909, 18857081]
theorem check24 : primorialChainCheck 4473 primorial4473 184 18854317 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 18854317 18857081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18854317) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [18857257, 18857441, 18857623, 18857803, 18857977, 18858157, 18858337, 18858517, 18858677, 18858841, 18859013, 18859163, 18859339, 18859513, 18859697, 18859871]
theorem check25 : primorialChainCheck 4473 primorial4473 184 18857081 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 18857081 18859871 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18857081) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [18860029, 18860213, 18860393, 18860573, 18860753, 18860929, 18861097, 18861277, 18861461, 18861643, 18861827, 18861989, 18862153, 18862321, 18862471, 18862643]
theorem check26 : primorialChainCheck 4473 primorial4473 184 18859871 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 18859871 18862643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18859871) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [18862819, 18862951, 18863123, 18863297, 18863479, 18863653, 18863809, 18863987, 18864137, 18864281, 18864431, 18864613, 18864787, 18864971, 18865151, 18865331]
theorem check27 : primorialChainCheck 4473 primorial4473 184 18862643 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 18862643 18865331 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18862643) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [18865501, 18865673, 18865843, 18865999, 18866171, 18866299, 18866479, 18866657, 18866833, 18867007, 18867181, 18867341, 18867517, 18867701, 18867881, 18868063]
theorem check28 : primorialChainCheck 4473 primorial4473 184 18865331 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 18865331 18868063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18865331) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [18868231, 18868411, 18868559, 18868727, 18868891, 18869063, 18869243, 18869423, 18869581, 18869761, 18869933, 18870109, 18870277, 18870389, 18870571, 18870749]
theorem check29 : primorialChainCheck 4473 primorial4473 184 18868063 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 18868063 18870749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18868063) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [18870931, 18871103, 18871277, 18871451, 18871609, 18871789, 18871967, 18872143, 18872317, 18872501, 18872677, 18872827, 18872993, 18873167, 18873331, 18873511]
theorem check30 : primorialChainCheck 4473 primorial4473 184 18870749 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 18870749 18873511 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18870749) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [18873691, 18873871, 18874039, 18874217, 18874399, 18874529, 18874703, 18874859, 18875041, 18875191, 18875369, 18875551, 18875713, 18875851, 18876019, 18876197]
theorem check31 : primorialChainCheck 4473 primorial4473 184 18873511 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 18873511 18876197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18873511) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 18789059 18794491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18789059)
    (mid := 18791821) (hi := 18794491) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 18794491 18800087 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18794491)
    (mid := 18797297) (hi := 18800087) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 18800087 18805547 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18800087)
    (mid := 18802853) (hi := 18805547) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 18805547 18811153 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18805547)
    (mid := 18808373) (hi := 18811153) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 18811153 18816619 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18811153)
    (mid := 18813863) (hi := 18816619) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 18816619 18821983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18816619)
    (mid := 18819277) (hi := 18821983) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 18821983 18827407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18821983)
    (mid := 18824671) (hi := 18827407) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 18827407 18832813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18827407)
    (mid := 18830099) (hi := 18832813) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 18832813 18838301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18832813)
    (mid := 18835571) (hi := 18838301) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 18838301 18843607 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18838301)
    (mid := 18840967) (hi := 18843607) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 18843607 18848941 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18843607)
    (mid := 18846211) (hi := 18848941) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 18848941 18854317 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18848941)
    (mid := 18851563) (hi := 18854317) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 18854317 18859871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18854317)
    (mid := 18857081) (hi := 18859871) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 18859871 18865331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18859871)
    (mid := 18862643) (hi := 18865331) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 18865331 18870749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18865331)
    (mid := 18868063) (hi := 18870749) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 18870749 18876197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18870749)
    (mid := 18873511) (hi := 18876197) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 18789059 18800087 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18789059)
    (mid := 18794491) (hi := 18800087) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 18800087 18811153 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18800087)
    (mid := 18805547) (hi := 18811153) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 18811153 18821983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18811153)
    (mid := 18816619) (hi := 18821983) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 18821983 18832813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18821983)
    (mid := 18827407) (hi := 18832813) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 18832813 18843607 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18832813)
    (mid := 18838301) (hi := 18843607) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 18843607 18854317 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18843607)
    (mid := 18848941) (hi := 18854317) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 18854317 18865331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18854317)
    (mid := 18859871) (hi := 18865331) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 18865331 18876197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18865331)
    (mid := 18870749) (hi := 18876197) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 18789059 18811153 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18789059)
    (mid := 18800087) (hi := 18811153) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 18811153 18832813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18811153)
    (mid := 18821983) (hi := 18832813) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 18832813 18854317 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18832813)
    (mid := 18843607) (hi := 18854317) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 18854317 18876197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18854317)
    (mid := 18865331) (hi := 18876197) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 18789059 18832813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18789059)
    (mid := 18811153) (hi := 18832813) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 18832813 18876197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18832813)
    (mid := 18854317) (hi := 18876197) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 18789059 18876197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18789059)
    (mid := 18832813) (hi := 18876197) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 18789059 18876197 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block214

#print axioms B699MiddleExtension.PrimorialBlocks.Block214.joined
