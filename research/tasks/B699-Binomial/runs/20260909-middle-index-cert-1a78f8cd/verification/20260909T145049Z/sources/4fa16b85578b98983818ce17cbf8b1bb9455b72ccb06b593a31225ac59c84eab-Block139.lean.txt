import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block139

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [12232621, 12232777, 12232949, 12233107, 12233279, 12233461, 12233593, 12233773, 12233917, 12234097, 12234281, 12234437, 12234583, 12234757, 12234941, 12235109]
theorem check0 : primorialChainCheck 4473 primorial4473 184 12232471 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 12232471 12235109 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12232471) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [12235277, 12235429, 12235547, 12235723, 12235907, 12236089, 12236249, 12236401, 12236569, 12236743, 12236911, 12237091, 12237227, 12237409, 12237581, 12237763]
theorem check1 : primorialChainCheck 4473 primorial4473 184 12235109 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 12235109 12237763 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12235109) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [12237947, 12238117, 12238297, 12238481, 12238661, 12238843, 12239027, 12239177, 12239351, 12239527, 12239701, 12239869, 12240037, 12240203, 12240379, 12240559]
theorem check2 : primorialChainCheck 4473 primorial4473 184 12237763 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 12237763 12240559 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12237763) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [12240719, 12240889, 12241067, 12241231, 12241399, 12241583, 12241759, 12241939, 12242123, 12242291, 12242473, 12242653, 12242807, 12242987, 12243167, 12243323]
theorem check3 : primorialChainCheck 4473 primorial4473 184 12240559 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 12240559 12243323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12240559) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [12243457, 12243611, 12243787, 12243971, 12244147, 12244327, 12244501, 12244681, 12244829, 12244997, 12245179, 12245353, 12245533, 12245707, 12245879, 12246053]
theorem check4 : primorialChainCheck 4473 primorial4473 184 12243323 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 12243323 12246053 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12243323) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [12246211, 12246383, 12246547, 12246721, 12246901, 12247051, 12247211, 12247369, 12247549, 12247709, 12247843, 12248023, 12248207, 12248389, 12248569, 12248741]
theorem check5 : primorialChainCheck 4473 primorial4473 184 12246053 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 12246053 12248741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12246053) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [12248923, 12249103, 12249269, 12249449, 12249599, 12249781, 12249953, 12250097, 12250253, 12250397, 12250561, 12250741, 12250919, 12251093, 12251269, 12251453]
theorem check6 : primorialChainCheck 4473 primorial4473 184 12248741 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 12248741 12251453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12248741) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [12251633, 12251807, 12251983, 12252151, 12252323, 12252503, 12252673, 12252847, 12253013, 12253193, 12253361, 12253543, 12253723, 12253907, 12254089, 12254273]
theorem check7 : primorialChainCheck 4473 primorial4473 184 12251453 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 12251453 12254273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12251453) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [12254453, 12254629, 12254797, 12254971, 12255151, 12255319, 12255499, 12255653, 12255829, 12256001, 12256177, 12256351, 12256487, 12256649, 12256831, 12257009]
theorem check8 : primorialChainCheck 4473 primorial4473 184 12254273 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 12254273 12257009 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12254273) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [12257173, 12257351, 12257533, 12257711, 12257891, 12258049, 12258229, 12258413, 12258583, 12258767, 12258941, 12259103, 12259283, 12259463, 12259633, 12259813]
theorem check9 : primorialChainCheck 4473 primorial4473 184 12257009 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 12257009 12259813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12257009) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [12259981, 12260147, 12260323, 12260503, 12260629, 12260813, 12260993, 12261167, 12261331, 12261503, 12261677, 12261817, 12261961, 12262123, 12262303, 12262487]
theorem check10 : primorialChainCheck 4473 primorial4473 184 12259813 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 12259813 12262487 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12259813) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [12262667, 12262829, 12262937, 12263101, 12263267, 12263437, 12263611, 12263791, 12263969, 12264137, 12264319, 12264493, 12264641, 12264817, 12264983, 12265163]
theorem check11 : primorialChainCheck 4473 primorial4473 184 12262487 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 12262487 12265163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12262487) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [12265327, 12265511, 12265667, 12265817, 12265999, 12266179, 12266363, 12266543, 12266719, 12266899, 12267067, 12267247, 12267401, 12267581, 12267743, 12267923]
theorem check12 : primorialChainCheck 4473 primorial4473 184 12265163 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 12265163 12267923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12265163) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [12268103, 12268273, 12268447, 12268601, 12268783, 12268967, 12269141, 12269321, 12269503, 12269671, 12269849, 12269989, 12270173, 12270329, 12270487, 12270667]
theorem check13 : primorialChainCheck 4473 primorial4473 184 12267923 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 12267923 12270667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12267923) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [12270763, 12270919, 12271099, 12271279, 12271463, 12271643, 12271801, 12271969, 12272129, 12272303, 12272483, 12272633, 12272801, 12272983, 12273143, 12273323]
theorem check14 : primorialChainCheck 4473 primorial4473 184 12270667 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 12270667 12273323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12270667) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [12273497, 12273673, 12273803, 12273979, 12274159, 12274331, 12274501, 12274681, 12274837, 12275017, 12275201, 12275371, 12275509, 12275677, 12275839, 12276007]
theorem check15 : primorialChainCheck 4473 primorial4473 184 12273323 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 12273323 12276007 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12273323) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [12276163, 12276331, 12276497, 12276643, 12276827, 12276991, 12277169, 12277351, 12277523, 12277691, 12277873, 12278039, 12278221, 12278377, 12278543, 12278683]
theorem check16 : primorialChainCheck 4473 primorial4473 184 12276007 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 12276007 12278683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12276007) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [12278837, 12279019, 12279167, 12279349, 12279497, 12279649, 12279829, 12280013, 12280193, 12280357, 12280531, 12280693, 12280871, 12281051, 12281221, 12281389]
theorem check17 : primorialChainCheck 4473 primorial4473 184 12278683 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 12278683 12281389 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12278683) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [12281573, 12281729, 12281909, 12282079, 12282241, 12282419, 12282601, 12282769, 12282947, 12283111, 12283289, 12283459, 12283643, 12283819, 12284003, 12284171]
theorem check18 : primorialChainCheck 4473 primorial4473 184 12281389 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 12281389 12284171 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12281389) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [12284341, 12284521, 12284689, 12284869, 12285047, 12285193, 12285367, 12285551, 12285731, 12285907, 12286091, 12286271, 12286453, 12286613, 12286783, 12286957]
theorem check19 : primorialChainCheck 4473 primorial4473 184 12284171 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 12284171 12286957 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12284171) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [12287137, 12287321, 12287489, 12287641, 12287801, 12287983, 12288137, 12288313, 12288487, 12288659, 12288823, 12289001, 12289183, 12289367, 12289531, 12289687]
theorem check20 : primorialChainCheck 4473 primorial4473 184 12286957 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 12286957 12289687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12286957) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [12289847, 12290009, 12290189, 12290357, 12290521, 12290687, 12290851, 12291029, 12291211, 12291379, 12291557, 12291703, 12291871, 12292019, 12292193, 12292361]
theorem check21 : primorialChainCheck 4473 primorial4473 184 12289687 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 12289687 12292361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12289687) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [12292531, 12292699, 12292877, 12293053, 12293233, 12293389, 12293557, 12293719, 12293881, 12294053, 12294229, 12294379, 12294563, 12294731, 12294913, 12295093]
theorem check22 : primorialChainCheck 4473 primorial4473 184 12292361 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 12292361 12295093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12292361) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [12295277, 12295457, 12295637, 12295819, 12295967, 12296129, 12296299, 12296461, 12296623, 12296803, 12296953, 12297083, 12297227, 12297407, 12297583, 12297763]
theorem check23 : primorialChainCheck 4473 primorial4473 184 12295093 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 12295093 12297763 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12295093) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [12297947, 12298127, 12298309, 12298487, 12298651, 12298829, 12299011, 12299167, 12299351, 12299531, 12299701, 12299879, 12300059, 12300227, 12300403, 12300577]
theorem check24 : primorialChainCheck 4473 primorial4473 184 12297763 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 12297763 12300577 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12297763) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [12300751, 12300931, 12301111, 12301277, 12301439, 12301621, 12301789, 12301969, 12302153, 12302321, 12302497, 12302681, 12302863, 12303043, 12303227, 12303407]
theorem check25 : primorialChainCheck 4473 primorial4473 184 12300577 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 12300577 12303407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12300577) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [12303589, 12303763, 12303911, 12304079, 12304261, 12304441, 12304601, 12304783, 12304949, 12305113, 12305273, 12305441, 12305581, 12305753, 12305921, 12306061]
theorem check26 : primorialChainCheck 4473 primorial4473 184 12303407 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 12303407 12306061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12303407) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [12306241, 12306421, 12306599, 12306779, 12306961, 12307109, 12307271, 12307453, 12307627, 12307811, 12307993, 12308173, 12308353, 12308509, 12308693, 12308873]
theorem check27 : primorialChainCheck 4473 primorial4473 184 12306061 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 12306061 12308873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12306061) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [12309053, 12309233, 12309413, 12309593, 12309769, 12309953, 12310121, 12310303, 12310481, 12310657, 12310817, 12310997, 12311153, 12311333, 12311513, 12311683]
theorem check28 : primorialChainCheck 4473 primorial4473 184 12308873 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 12308873 12311683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12308873) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [12311857, 12312031, 12312197, 12312359, 12312511, 12312689, 12312863, 12313043, 12313187, 12313369, 12313549, 12313709, 12313877, 12314051, 12314231, 12314381]
theorem check29 : primorialChainCheck 4473 primorial4473 184 12311683 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 12311683 12314381 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12311683) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [12314563, 12314699, 12314873, 12315013, 12315187, 12315371, 12315529, 12315713, 12315883, 12316061, 12316231, 12316411, 12316589, 12316747, 12316903, 12317087]
theorem check30 : primorialChainCheck 4473 primorial4473 184 12314381 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 12314381 12317087 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12314381) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [12317251, 12317423, 12317597, 12317771, 12317941, 12318109, 12318283, 12318461, 12318623, 12318799, 12318979, 12319129, 12319313, 12319481, 12319663, 12319843]
theorem check31 : primorialChainCheck 4473 primorial4473 184 12317087 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 12317087 12319843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12317087) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 12232471 12237763 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12232471)
    (mid := 12235109) (hi := 12237763) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 12237763 12243323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12237763)
    (mid := 12240559) (hi := 12243323) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 12243323 12248741 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12243323)
    (mid := 12246053) (hi := 12248741) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 12248741 12254273 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12248741)
    (mid := 12251453) (hi := 12254273) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 12254273 12259813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12254273)
    (mid := 12257009) (hi := 12259813) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 12259813 12265163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12259813)
    (mid := 12262487) (hi := 12265163) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 12265163 12270667 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12265163)
    (mid := 12267923) (hi := 12270667) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 12270667 12276007 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12270667)
    (mid := 12273323) (hi := 12276007) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 12276007 12281389 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12276007)
    (mid := 12278683) (hi := 12281389) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 12281389 12286957 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12281389)
    (mid := 12284171) (hi := 12286957) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 12286957 12292361 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12286957)
    (mid := 12289687) (hi := 12292361) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 12292361 12297763 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12292361)
    (mid := 12295093) (hi := 12297763) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 12297763 12303407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12297763)
    (mid := 12300577) (hi := 12303407) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 12303407 12308873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12303407)
    (mid := 12306061) (hi := 12308873) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 12308873 12314381 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12308873)
    (mid := 12311683) (hi := 12314381) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 12314381 12319843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12314381)
    (mid := 12317087) (hi := 12319843) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 12232471 12243323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12232471)
    (mid := 12237763) (hi := 12243323) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 12243323 12254273 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12243323)
    (mid := 12248741) (hi := 12254273) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 12254273 12265163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12254273)
    (mid := 12259813) (hi := 12265163) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 12265163 12276007 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12265163)
    (mid := 12270667) (hi := 12276007) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 12276007 12286957 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12276007)
    (mid := 12281389) (hi := 12286957) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 12286957 12297763 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12286957)
    (mid := 12292361) (hi := 12297763) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 12297763 12308873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12297763)
    (mid := 12303407) (hi := 12308873) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 12308873 12319843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12308873)
    (mid := 12314381) (hi := 12319843) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 12232471 12254273 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12232471)
    (mid := 12243323) (hi := 12254273) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 12254273 12276007 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12254273)
    (mid := 12265163) (hi := 12276007) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 12276007 12297763 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12276007)
    (mid := 12286957) (hi := 12297763) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 12297763 12319843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12297763)
    (mid := 12308873) (hi := 12319843) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 12232471 12276007 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12232471)
    (mid := 12254273) (hi := 12276007) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 12276007 12319843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12276007)
    (mid := 12297763) (hi := 12319843) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 12232471 12319843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12232471)
    (mid := 12276007) (hi := 12319843) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 12232471 12319843 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block139

#print axioms B699MiddleExtension.PrimorialBlocks.Block139.joined
