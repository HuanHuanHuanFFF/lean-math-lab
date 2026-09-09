import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block168

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [14771741, 14771909, 14772083, 14772211, 14772391, 14772551, 14772733, 14772917, 14773091, 14773271, 14773427, 14773601, 14773771, 14773937, 14774117, 14774299]
theorem check0 : primorialChainCheck 4473 primorial4473 184 14771563 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 14771563 14774299 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14771563) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [14774477, 14774653, 14774831, 14775011, 14775169, 14775353, 14775517, 14775689, 14775853, 14776007, 14776187, 14776351, 14776529, 14776711, 14776843, 14777027]
theorem check1 : primorialChainCheck 4473 primorial4473 184 14774299 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 14774299 14777027 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14774299) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [14777197, 14777363, 14777537, 14777713, 14777897, 14778079, 14778263, 14778431, 14778613, 14778791, 14778961, 14779139, 14779319, 14779489, 14779673, 14779847]
theorem check2 : primorialChainCheck 4473 primorial4473 184 14777027 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 14777027 14779847 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14777027) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [14780027, 14780203, 14780371, 14780551, 14780729, 14780911, 14781089, 14781257, 14781439, 14781623, 14781803, 14781979, 14782151, 14782309, 14782483, 14782657]
theorem check3 : primorialChainCheck 4473 primorial4473 184 14779847 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 14779847 14782657 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14779847) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [14782829, 14783009, 14783173, 14783323, 14783491, 14783669, 14783849, 14784031, 14784181, 14784361, 14784521, 14784703, 14784881, 14785027, 14785207, 14785391]
theorem check4 : primorialChainCheck 4473 primorial4473 184 14782657 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 14782657 14785391 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14782657) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [14785559, 14785739, 14785921, 14786087, 14786269, 14786423, 14786599, 14786771, 14786951, 14787133, 14787307, 14787481, 14787659, 14787797, 14787979, 14788159]
theorem check5 : primorialChainCheck 4473 primorial4473 184 14785391 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 14785391 14788159 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14785391) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [14788343, 14788481, 14788663, 14788847, 14789029, 14789213, 14789363, 14789539, 14789701, 14789869, 14790023, 14790199, 14790371, 14790553, 14790703, 14790883]
theorem check6 : primorialChainCheck 4473 primorial4473 184 14788159 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 14788159 14790883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14788159) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [14791043, 14791223, 14791393, 14791571, 14791739, 14791919, 14792101, 14792257, 14792441, 14792593, 14792747, 14792917, 14793101, 14793271, 14793433, 14793617]
theorem check7 : primorialChainCheck 4473 primorial4473 184 14790883 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 14790883 14793617 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14790883) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [14793797, 14793979, 14794159, 14794333, 14794517, 14794699, 14794877, 14795059, 14795237, 14795413, 14795581, 14795743, 14795917, 14796101, 14796253, 14796437]
theorem check8 : primorialChainCheck 4473 primorial4473 184 14793617 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 14793617 14796437 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14793617) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [14796619, 14796799, 14796979, 14797127, 14797273, 14797457, 14797631, 14797799, 14797969, 14798137, 14798309, 14798461, 14798639, 14798809, 14798989, 14799173]
theorem check9 : primorialChainCheck 4473 primorial4473 184 14796437 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 14796437 14799173 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14796437) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [14799293, 14799457, 14799641, 14799823, 14800001, 14800171, 14800351, 14800519, 14800699, 14800879, 14801053, 14801231, 14801411, 14801593, 14801777, 14801953]
theorem check10 : primorialChainCheck 4473 primorial4473 184 14799173 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 14799173 14801953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14799173) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [14802127, 14802299, 14802457, 14802637, 14802817, 14802989, 14803169, 14803331, 14803511, 14803693, 14803871, 14804051, 14804233, 14804407, 14804557, 14804737]
theorem check11 : primorialChainCheck 4473 primorial4473 184 14801953 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 14801953 14804737 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14801953) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [14804903, 14805071, 14805253, 14805433, 14805601, 14805757, 14805919, 14806097, 14806271, 14806433, 14806613, 14806793, 14806973, 14807131, 14807293, 14807473]
theorem check12 : primorialChainCheck 4473 primorial4473 184 14804737 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 14804737 14807473 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14804737) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [14807651, 14807813, 14807983, 14808151, 14808331, 14808511, 14808691, 14808851, 14809019, 14809181, 14809357, 14809523, 14809699, 14809877, 14810053, 14810233]
theorem check13 : primorialChainCheck 4473 primorial4473 184 14807473 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 14807473 14810233 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14807473) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [14810407, 14810569, 14810737, 14810891, 14811067, 14811217, 14811389, 14811571, 14811739, 14811911, 14812093, 14812277, 14812453, 14812613, 14812789, 14812969]
theorem check14 : primorialChainCheck 4473 primorial4473 184 14810233 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 14810233 14812969 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14810233) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [14813147, 14813327, 14813497, 14813663, 14813837, 14814013, 14814197, 14814379, 14814557, 14814739, 14814923, 14815093, 14815267, 14815447, 14815627, 14815807]
theorem check15 : primorialChainCheck 4473 primorial4473 184 14812969 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 14812969 14815807 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14812969) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [14815987, 14816167, 14816341, 14816519, 14816701, 14816881, 14816993, 14817167, 14817331, 14817469, 14817631, 14817809, 14817991, 14818151, 14818313, 14818483]
theorem check16 : primorialChainCheck 4473 primorial4473 184 14815807 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 14815807 14818483 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14815807) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [14818663, 14818847, 14819027, 14819173, 14819347, 14819527, 14819687, 14819851, 14820031, 14820203, 14820371, 14820541, 14820709, 14820877, 14821031, 14821211]
theorem check17 : primorialChainCheck 4473 primorial4473 184 14818483 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 14818483 14821211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14818483) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [14821381, 14821531, 14821699, 14821879, 14822021, 14822201, 14822383, 14822537, 14822713, 14822897, 14823073, 14823253, 14823409, 14823587, 14823769, 14823953]
theorem check18 : primorialChainCheck 4473 primorial4473 184 14821211 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 14821211 14823953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14821211) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [14824127, 14824301, 14824483, 14824661, 14824793, 14824963, 14825147, 14825303, 14825483, 14825659, 14825831, 14825983, 14826143, 14826323, 14826503, 14826683]
theorem check19 : primorialChainCheck 4473 primorial4473 184 14823953 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 14823953 14826683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14823953) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [14826857, 14827039, 14827193, 14827361, 14827537, 14827721, 14827877, 14828059, 14828243, 14828423, 14828603, 14828771, 14828953, 14829127, 14829289, 14829467]
theorem check20 : primorialChainCheck 4473 primorial4473 184 14826683 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 14826683 14829467 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14826683) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [14829611, 14829791, 14829973, 14830157, 14830297, 14830481, 14830663, 14830847, 14831029, 14831177, 14831347, 14831513, 14831693, 14831867, 14832047, 14832221]
theorem check21 : primorialChainCheck 4473 primorial4473 184 14829467 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 14829467 14832221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14829467) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [14832383, 14832553, 14832733, 14832913, 14833087, 14833271, 14833451, 14833631, 14833807, 14833991, 14834161, 14834321, 14834437, 14834621, 14834803, 14834971]
theorem check22 : primorialChainCheck 4473 primorial4473 184 14832221 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 14832221 14834971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14832221) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [14835103, 14835287, 14835467, 14835643, 14835803, 14835983, 14836163, 14836337, 14836501, 14836673, 14836837, 14836993, 14837171, 14837327, 14837503, 14837687]
theorem check23 : primorialChainCheck 4473 primorial4473 184 14834971 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 14834971 14837687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14834971) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [14837861, 14838029, 14838211, 14838377, 14838533, 14838713, 14838883, 14839067, 14839243, 14839423, 14839603, 14839777, 14839927, 14840107, 14840291, 14840471]
theorem check24 : primorialChainCheck 4473 primorial4473 184 14837687 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 14837687 14840471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14837687) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [14840641, 14840821, 14840993, 14841173, 14841349, 14841523, 14841691, 14841821, 14842001, 14842183, 14842367, 14842549, 14842733, 14842913, 14843089, 14843249]
theorem check25 : primorialChainCheck 4473 primorial4473 184 14840471 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 14840471 14843249 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14840471) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [14843429, 14843611, 14843743, 14843903, 14844083, 14844251, 14844421, 14844593, 14844763, 14844943, 14845121, 14845291, 14845469, 14845627, 14845781, 14845951]
theorem check26 : primorialChainCheck 4473 primorial4473 184 14843249 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 14843249 14845951 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14843249) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [14846131, 14846311, 14846483, 14846659, 14846833, 14847013, 14847193, 14847361, 14847529, 14847709, 14847869, 14848037, 14848217, 14848369, 14848553, 14848723]
theorem check27 : primorialChainCheck 4473 primorial4473 184 14845951 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 14845951 14848723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14845951) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [14848891, 14849071, 14849251, 14849399, 14849581, 14849761, 14849941, 14850107, 14850259, 14850413, 14850587, 14850769, 14850947, 14851127, 14851301, 14851481]
theorem check28 : primorialChainCheck 4473 primorial4473 184 14848723 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 14848723 14851481 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14848723) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [14851643, 14851817, 14851987, 14852161, 14852323, 14852491, 14852647, 14852821, 14853001, 14853151, 14853323, 14853499, 14853673, 14853851, 14854031, 14854207]
theorem check29 : primorialChainCheck 4473 primorial4473 184 14851481 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 14851481 14854207 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14851481) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [14854361, 14854531, 14854663, 14854841, 14855023, 14855153, 14855333, 14855483, 14855641, 14855821, 14855993, 14856169, 14856329, 14856481, 14856659, 14856817]
theorem check30 : primorialChainCheck 4473 primorial4473 184 14854207 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 14854207 14856817 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14854207) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [14856991, 14857163, 14857307, 14857481, 14857651, 14857819, 14857963, 14858141, 14858317, 14858489, 14858671, 14858849, 14859029, 14859203, 14859367, 14859521]
theorem check31 : primorialChainCheck 4473 primorial4473 184 14856817 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 14856817 14859521 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14856817) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 14771563 14777027 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14771563)
    (mid := 14774299) (hi := 14777027) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 14777027 14782657 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14777027)
    (mid := 14779847) (hi := 14782657) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 14782657 14788159 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14782657)
    (mid := 14785391) (hi := 14788159) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 14788159 14793617 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14788159)
    (mid := 14790883) (hi := 14793617) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 14793617 14799173 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14793617)
    (mid := 14796437) (hi := 14799173) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 14799173 14804737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14799173)
    (mid := 14801953) (hi := 14804737) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 14804737 14810233 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14804737)
    (mid := 14807473) (hi := 14810233) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 14810233 14815807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14810233)
    (mid := 14812969) (hi := 14815807) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 14815807 14821211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14815807)
    (mid := 14818483) (hi := 14821211) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 14821211 14826683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14821211)
    (mid := 14823953) (hi := 14826683) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 14826683 14832221 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14826683)
    (mid := 14829467) (hi := 14832221) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 14832221 14837687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14832221)
    (mid := 14834971) (hi := 14837687) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 14837687 14843249 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14837687)
    (mid := 14840471) (hi := 14843249) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 14843249 14848723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14843249)
    (mid := 14845951) (hi := 14848723) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 14848723 14854207 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14848723)
    (mid := 14851481) (hi := 14854207) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 14854207 14859521 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14854207)
    (mid := 14856817) (hi := 14859521) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 14771563 14782657 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14771563)
    (mid := 14777027) (hi := 14782657) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 14782657 14793617 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14782657)
    (mid := 14788159) (hi := 14793617) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 14793617 14804737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14793617)
    (mid := 14799173) (hi := 14804737) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 14804737 14815807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14804737)
    (mid := 14810233) (hi := 14815807) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 14815807 14826683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14815807)
    (mid := 14821211) (hi := 14826683) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 14826683 14837687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14826683)
    (mid := 14832221) (hi := 14837687) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 14837687 14848723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14837687)
    (mid := 14843249) (hi := 14848723) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 14848723 14859521 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14848723)
    (mid := 14854207) (hi := 14859521) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 14771563 14793617 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14771563)
    (mid := 14782657) (hi := 14793617) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 14793617 14815807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14793617)
    (mid := 14804737) (hi := 14815807) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 14815807 14837687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14815807)
    (mid := 14826683) (hi := 14837687) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 14837687 14859521 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14837687)
    (mid := 14848723) (hi := 14859521) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 14771563 14815807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14771563)
    (mid := 14793617) (hi := 14815807) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 14815807 14859521 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14815807)
    (mid := 14837687) (hi := 14859521) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 14771563 14859521 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14771563)
    (mid := 14815807) (hi := 14859521) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 14771563 14859521 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block168

#print axioms B699MiddleExtension.PrimorialBlocks.Block168.joined
